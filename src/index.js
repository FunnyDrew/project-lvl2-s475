import _ from 'lodash';
import parser from './parser';
const objToConfigStr = (obj) => {
  const keys = Object.keys(obj);
  return keys.reduce((acc, key) => `${acc}\n+ ${key}: ${obj[key]}`, '');
};


const diff = (firstFilePath, secondFilePath) => {
  const objBefore = parser(firstFilePath);

  const objAfter = parser(secondFilePath);

  const keys = Object.keys(objBefore);

  const initStr = keys.reduce((acc, key) => {
    if (_.has(objAfter, key)) {
      if (objBefore[key] === objAfter[key]) {
        return `${acc}\n  ${key}: ${objAfter[key]}`;
      }
      return `${acc}\n+ ${key}: ${objAfter[key]}\n- ${key}: ${objBefore[key]}`;
    }
    return `${acc}\n- ${key}: ${objBefore[key]}`;
  }, '{');

  const ommitedObject = _.omit(objAfter, keys);

  return Object.keys(ommitedObject).length ? `${initStr}${objToConfigStr(ommitedObject)}\n}` : `${initStr}\n}`;
};
export default diff;