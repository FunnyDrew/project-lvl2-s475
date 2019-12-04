import _ from 'lodash';
import parser from './parser';

const makeIndent = (level) => `${' '.repeat(2 * (2 * level + 1))}`;

const stringify = (obj, indentLevel, accStr) => {
  const keys = Object.keys(obj);
  const result = keys.reduce((keyAcc, key) => {
    const newIndentLevel = indentLevel + 1;
    const value = obj[key] instanceof Object ? `${stringify(obj[key], newIndentLevel, accStr)}`
      : `${obj[key]}`;
    return `${keyAcc}\n  ${makeIndent(newIndentLevel)}${key}: ${value}`;
  }, '');
  return `{${result}\n  ${makeIndent(indentLevel)}}`;
};

const states = {
  deleted: '-',
  unchanged: ' ',
  added: '+',
};

const getItemForPrint = (obj, indent) => (obj instanceof Object ? stringify(obj, indent, '') : `${obj}`);

const astRender = (diffTree, level, strAcc) => diffTree.reduce((accKey, curObj) => {
  if (_.has(states, curObj.state)) {
    return `${accKey}\n${makeIndent(level)}${states[curObj.state]} ${curObj.key}: ${getItemForPrint(curObj.value, level)}`;
  }
  if (curObj.children.length < 1) {
    const obj1 = curObj.value[0];
    const obj2 = curObj.value[1];
    return `${accKey}\n${makeIndent(level)}- ${curObj.key}: ${getItemForPrint(obj1, level)}\n${makeIndent(level)}+ ${curObj.key}: ${getItemForPrint(obj2, level)}`;
  }
  const arg = curObj.children;
  const levelup = level + 1;
  return `${accKey}\n${makeIndent(level)}  ${curObj.key}: {${astRender(arg, levelup, strAcc)}\n  ${makeIndent(level)}}`;
},
strAcc);


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

      return [...firstAcc, {
        key: curKey, state: 'changed', value: [firstObj[curKey], secondObj[curKey]], children: [],
      }];
    }, acc);

    const omitedObj = _.omit(secondObj, firstObjKeys);

    const omitedKeys = Object.keys(omitedObj);

    return omitedKeys.reduce((omitedAcc, item) => [...omitedAcc, { key: item, state: 'added', value: omitedObj[item] }], mainDiff);
  };

  const ast = makeDiffAST(objBefore, objAfter, []);
  return `{${astRender(ast, 0, '')}\n}`;
};


export default diff;
