import _ from 'lodash';
import parser from './parser';


const objToConfigStr = (obj) => {
  const keys = Object.keys(obj);
  return keys.reduce((acc, key) => `${acc}\n+ ${key}: ${obj[key]}`, '');
};


const stringify = (obj, level, accStr) => {
  const keys = Object.keys(obj);
  return keys.reduce((keyAcc, key) => {
    const newlevel = level + 1;
    const value = obj[key] instanceof Object ? stringify(obj[key], newlevel, accStr) : obj[key];
    return `${keyAcc}\n${' '.repeat(4 * level)}${key}: ${value}`;
  }, accStr);
};


const astRender = (diffTree, level, strAcc) => {
  return diffTree.reduce((accKey, curObj) => {
    if (curObj.state === 'deleted') {
      const newlevel = level + 1;
      const show = curObj.value instanceof Object ? stringify(curObj.value, newlevel, '') : curObj.value;
      return `${accKey}\n - ${curObj.key}: ${show}`;
    }
    if (curObj.state === 'unchanged') {
      const newlevel = level + 1;
      const show = curObj.value instanceof Object ? stringify(curObj.value, newlevel, '') : curObj.value;
      return `${accKey}\n   ${curObj.key}: ${show}`;
    }
    if (curObj.state === 'added') {
      const newlevel = level + 1;
      const show = curObj.value instanceof Object ? stringify(curObj.value, newlevel, '') : curObj.value;
      return `${accKey}\n + ${curObj.key}: ${show}`;
    }
    if (curObj.children.length < 1) {
      const newlevel = level + 1;
      const obj1 = curObj.value[0];
      const obj2 = curObj.value[1];
      const show1 = obj1 instanceof Object ? stringify(obj1, newlevel, '') : obj1;
      const show2 = obj2 instanceof Object ? stringify(obj2, newlevel, '') : obj2;
      return `${accKey}\n - ${curObj.key}: ${show1}\n + ${curObj.key}: ${show2}`;
    }
    const obj1 = curObj.children[0];
    const obj2 = curObj.children[1];
    const show1 = obj1 instanceof Object ? stringify(obj1, newlevel, '') : obj1;
    const show2 = obj2 instanceof Object ? stringify(obj2, newlevel, '') : obj2;

  },
  strAcc);
};

const diff = (firstFilePath, secondFilePath) => {
  const objBefore = parser(firstFilePath);

  const objAfter = parser(secondFilePath);

  const makeDiffAST = (firstObj, secondObj, acc) => {
    const firstObjKeys = Object.keys(firstObj);
    const mainDiff = firstObjKeys.reduce((firstAcc, curKey) => {
      if (!_.has(secondObj, curKey)) {
        return [...firstAcc, {
          key: curKey, state: 'deleted', value: firstObj[curKey], children: [],
        }];
      }

      const curKeyValueFirst = firstObj[curKey];
      const curKeyValueSecond = secondObj[curKey];

      if (_.isEqual(curKeyValueFirst, curKeyValueSecond)) {
        return [...firstAcc, {
          key: curKey, state: 'unchanged', value: firstObj[curKey], children: [],
        }];
      }

      if (curKeyValueFirst instanceof Object && curKeyValueSecond instanceof Object) {
        return [...firstAcc, {
          key: curKey, state: 'changed', value: {}, children: makeDiffAST(curKeyValueFirst, curKeyValueSecond, []),
        }];
      }

      return [...firstAcc, { key: curKey, state: 'changed', value: [firstObj[curKey], secondObj[curKey]], children: [] }];
    }, acc);

    const omitedObj = _.omit(secondObj, firstObjKeys);

    const omitedKeys = Object.keys(omitedObj);

    return omitedKeys.reduce((acc, item) => [...acc, { key: item, state: 'added', value: omitedObj[item] }], mainDiff);
  };

  const ast = makeDiffAST(objBefore, objAfter, []);
  //console.log(astRender(ast));
  const objstr = ` + ${stringify(objBefore, 0, '')}`;
  console.log(astRender(ast, 0, ''));
  return astRender(ast, 0, '');
};


export default diff;
