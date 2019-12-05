import _ from 'lodash';

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

export default astRender;
