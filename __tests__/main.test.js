
import path from 'path';
import fs from 'fs';
import gendiff from '../src';

const curentDir = __dirname;

describe.each([
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/result'), 'json'],
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/result'), 'yml'],
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/result'), 'ini'],

])('testing plain files', (pathFirstFile, pathSecondFile, fileResult, naming) => {
  test(`test ${naming} functionality`, () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
  });
});
