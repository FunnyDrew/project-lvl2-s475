import _ from 'lodash';
import path from 'path';
import fs from 'fs';

const diff = (fileBefore, fileAfter) => {

  const pathBefore = path.resolve(__dirname, fileBefore);
  const pathAfter = path.resolve(__dirname, fileAfter);

  const dataBefore = fs.readFileSync(pathBefore, 'utf-8');
  const dataAfter = fs.readFileSync(pathAfter, 'utf-8');

  const objBefore = JSON.parse(dataBefore);
  const objAfter = JSON.parse(dataAfter);

  const objToConfigStr = (obj) => {
    const keys = Object.keys(obj);
    return keys.reduce((acc, key) => `${acc}\n+ ${key}: ${obj[key]}`, '');
  }

  const keys = Object.keys(objBefore);

  const initStr = keys.reduce((acc, key) => {
    if (_.has(objAfter, key)) {
      if (objBefore[key] === objAfter[key]) {
        return `${acc}\n ${key}: ${objAfter[key]}`;
      }
      return `${acc}\n+ ${key}: ${objAfter[key]}\n- ${key}: ${objBefore[key]}`;
    }
    return `${acc}\n- ${key}: ${objBefore[key]}`;
  }, '{');
  
  const ommitedObject = _.omit(objAfter, keys);

  return Object.keys(ommitedObject).length ? `${initStr}${objToConfigStr(ommitedObject)}\n}` : `${initStr}\n}`;
};
export default diff;
