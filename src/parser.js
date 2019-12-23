import yaml from 'js-yaml';
import ini from 'ini';

const parserTypes = {
  '.json': (fileData) => JSON.parse(fileData),
  '.yml': (fileData) => {
    const [parseResult] = yaml.safeLoadAll(fileData);
    return parseResult;
  },
  '.ini': (fileData) => ini.parse(fileData),
};

const parser = (data, extension) => parserTypes[extension](data);

export default parser;
