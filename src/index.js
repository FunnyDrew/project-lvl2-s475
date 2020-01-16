import fs from 'fs';
import path from 'path';
import {
  isEqual, union, has, isObject,
} from 'lodash';
import parse from './parser';
import getRender from './formaters';

const getFileExtension = (pathToFile) => path.extname(pathToFile).slice(1);

const makeDiffTree = (beforeObj, afterObj) => {
  const keysUnion = union(Object.keys(beforeObj), Object.keys(afterObj));
  return keysUnion.map((key) => {
    if (!has(beforeObj, key)) {
      return {
        key, type: 'added', value: afterObj[key],
      };
    }
    if (!has(afterObj, key)) {
      return {
        key, type: 'deleted', value: beforeObj[key],
      };
    }
    if (isEqual(beforeObj[key], afterObj[key])) {
      return {
        key, type: 'unchanged', value: beforeObj[key],
      };
    }
    if (isObject(beforeObj[key]) && isObject(afterObj[key])) {
      return {
        key, type: 'complex', children: makeDiffTree(beforeObj[key], afterObj[key]),
      };
    }
    return {
      key, type: 'changed', before: beforeObj[key], after: afterObj[key],
    };
  });
};

const diff = (pathToBefore, pathToAfter, format = 'tree') => {
  const dataBefore = fs.readFileSync(pathToBefore, 'utf-8');
  const dataAfter = fs.readFileSync(pathToAfter, 'utf-8');

  const objBefore = parse(dataBefore, getFileExtension(pathToBefore));
  const objAfter = parse(dataAfter, getFileExtension(pathToAfter));

  const tree = makeDiffTree(objBefore, objAfter);
  const render = getRender(format);
  return render(tree);
};

export default diff;
