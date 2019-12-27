import yaml from 'js-yaml';
import ini from 'ini';

const parserTypes = {
  json: JSON.parse,
  yml: (fileData) => {
    const [parseResult] = yaml.safeLoadAll(fileData);
    return parseResult;
  },
  ini: ini.parse,
};

const parser = (data, extension) => parserTypes[extension](data);

export default parser;
