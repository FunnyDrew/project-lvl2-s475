import path from 'path';
import fs from 'fs';
import yaml from 'js-yaml';
import ini from 'ini';

const parser = (filepath) => {
  const fileData = fs.readFileSync(filepath, 'utf-8');
  const extension = path.extname(filepath);

  if (extension === '.json') return JSON.parse(fileData);

  if (extension === '.yml') {
    const [parseResult] = yaml.safeLoadAll(fileData);
    return parseResult;
  }

  if (extension === '.ini') {
    const parseResult = ini.parse(fileData);
    return parseResult;
  }
  return {};
};

export default parser;
