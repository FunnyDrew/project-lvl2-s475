import fs from 'fs';
import path from 'path';
import { isEqual, union } from 'lodash';
import getParse from './parser';
import getRender from './formaters/index';

const makeDiffTree = (beforeObj, afterObj) => {
  const beforeObjKeys = Object.keys(beforeObj);
  const afterObjKeys = Object.keys(afterObj);
  const keysUnion = union(beforeObjKeys, afterObjKeys);

  return keysUnion.map((key) => {
    if (!beforeObjKeys.includes(key)) {
      return {
        key, state: 'added', value: afterObj[key],
      };
    }
    if (!afterObjKeys.includes(key)) {
      return {
        key, state: 'deleted', value: beforeObj[key],
      };
    }
    if (isEqual(beforeObj[key], afterObj[key])) {
      return {
        key, state: 'unchanged', value: beforeObj[key],
      };
    }
    if (beforeObj[key] instanceof Object && afterObj[key] instanceof Object) {
      return {
        key, state: 'changed', value: {}, children: makeDiffTree(beforeObj[key], afterObj[key]),
      };
    }
    return {
      key, state: 'changed', value: [beforeObj[key], afterObj[key]],
    };
  });
};

const diff = (pathToBefore, pathToAfter, format = 'tree') => {
  const dataBefore = fs.readFileSync(pathToBefore, 'utf-8');
  const dataAfter = fs.readFileSync(pathToAfter, 'utf-8');

  const objBefore = getParse(dataBefore, path.extname(pathToBefore));
  const objAfter = getParse(dataAfter, path.extname(pathToAfter));

  const tree = makeDiffTree(objBefore, objAfter, []);
  const render = getRender(format);
  return render(tree);
};

export default diff;
