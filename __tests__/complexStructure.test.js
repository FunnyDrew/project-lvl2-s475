
import path from 'path';
import fs from 'fs';
import gendiff from '../src';

const curentDir = __dirname;

describe.each([
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/result')],
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/result')],
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/result')],

])('testing plain files', (pathFirstFile, pathSecondFile, fileResult) => {
  test('test json functionality', () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
  });

  test('test yaml functionality', () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
  });

  test('test ini functionality', () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
  });
});
