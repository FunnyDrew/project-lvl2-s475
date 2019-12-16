import fs from 'fs';
import path from 'path';
import { has, omit, isEqual } from 'lodash';
import parser from './parser';
import treeRender from './formaters/treerender';
import plainRender from './formaters/plainrender';
import jsonRender from './formaters/jsonrender';

const renders = [
  {
    type: 'tree',
    render: (tree) => treeRender(tree),
  },
  {
    type: 'plain',
    render: (tree) => plainRender(tree),
  },
  {
    type: 'json',
    render: (tree) => jsonRender(tree),
  },
];

const getRender = (format) => renders.find(({ type }) => type === format);

const makeDiffTree = (beforeObj, afterObj, treeAcc) => {
  const beforeObjKeys = Object.keys(beforeObj);
  const beforeKeysTree = beforeObjKeys.reduce((keysAcc, currentKey) => {
    if (!has(afterObj, currentKey)) {
      return [...keysAcc, {
        key: currentKey, state: 'deleted', value: beforeObj[currentKey], children: [],
      }];
    }

    const curKeyBeforeValue = beforeObj[currentKey];
    const curKeyAfterValue = afterObj[currentKey];

    if (isEqual(curKeyBeforeValue, curKeyAfterValue)) {
      return [...keysAcc, {
        key: currentKey, state: 'unchanged', value: beforeObj[currentKey], children: [],
      }];
    }

    if (curKeyBeforeValue instanceof Object && curKeyAfterValue instanceof Object) {
      return [...keysAcc, {
        key: currentKey, state: 'changed', value: {}, children: makeDiffTree(curKeyBeforeValue, curKeyAfterValue, []),
      }];
    }

    return [...keysAcc, {
      key: currentKey, state: 'changed', value: [beforeObj[currentKey], afterObj[currentKey]], children: [],
    }];
  }, treeAcc);

  const omitedObj = omit(afterObj, beforeObjKeys);

  const omitedKeys = Object.keys(omitedObj);

  return omitedKeys.reduce((omitedAcc, item) => [...omitedAcc, {
    key: item, state: 'added', value: omitedObj[item], children: [],
  }], beforeKeysTree);
};


const diff = (beforeFilePath, afterFilePath, format = 'tree') => {
  const dataBefore = fs.readFileSync(beforeFilePath, 'utf-8');
  const dataAfter = fs.readFileSync(afterFilePath, 'utf-8');

  const objBefore = parser(dataBefore, path.extname(beforeFilePath));
  const objAfter = parser(dataAfter, path.extname(afterFilePath));

  const tree = makeDiffTree(objBefore, objAfter, []);
  const r = getRender(format);
  return r.render(tree);
};

export default diff;
