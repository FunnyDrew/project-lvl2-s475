import { safeLoad } from 'js-yaml';
import ini from 'ini';

const parserTypes = {
  json: JSON.parse,
  yml: safeLoad,
  ini: ini.parse,
};

const parser = (data, type) => parserTypes[type](data);

export default parser;
