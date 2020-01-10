import { safeLoad } from 'js-yaml';
import ini from 'ini';

const parserTypes = {
  json: JSON.parse,
  yml: safeLoad,
  ini: ini.parse,
};

const parser = (data, extension) => parserTypes[extension](data);

export default parser;
