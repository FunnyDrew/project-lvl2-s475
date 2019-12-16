import yaml from 'js-yaml';
import ini from 'ini';

const parsersTypes = [
  {
    ext: '.json',
    outputFnc: (fileData) => JSON.parse(fileData),
  },
  {
    ext: '.yml',
    outputFnc: (fileData) => {
      const [parseResult] = yaml.safeLoadAll(fileData);
      return parseResult;
    },
  },
  {
    ext: '.ini',
    outputFnc: (fileData) => ini.parse(fileData),
  },
];

const parser = (data, extension) => {
  const { outputFnc } = parsersTypes.find(({ ext }) => ext === extension);
  return outputFnc(data);
};

export default parser;
