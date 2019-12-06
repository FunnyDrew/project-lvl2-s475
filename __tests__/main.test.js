
import path from 'path';
import fs from 'fs';
import gendiff from '../src';

const curentDir = __dirname;

/* describe.each([
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/tree_test_result'), 'json'],
  [path.resolve(curentDir, '__fixtures__/before.yml'), path.resolve(curentDir, '__fixtures__/after.yml'),
    path.resolve(curentDir, '__fixtures__/tree_test_result'), 'yml'],
  [path.resolve(curentDir, '__fixtures__/before.ini'), path.resolve(curentDir, '__fixtures__/after.ini'),
    path.resolve(curentDir, '__fixtures__/tree_test_result'), 'ini'],

])('testing plain files', (pathFirstFile, pathSecondFile, fileResult, naming) => {
  test(`test tree ${naming} functionality`, () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
  });
}); */

/* describe.each([
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/plain_test_result'), 'json'],
  [path.resolve(curentDir, '__fixtures__/before.yml'), path.resolve(curentDir, '__fixtures__/after.yml'),
    path.resolve(curentDir, '__fixtures__/plain_test_result'), 'yml'],
  [path.resolve(curentDir, '__fixtures__/before.ini'), path.resolve(curentDir, '__fixtures__/after.ini'),
    path.resolve(curentDir, '__fixtures__/plain_test_result'), 'ini'],

])('testing plain files', (pathFirstFile, pathSecondFile, fileResult, naming) => {
  test(`test plain ${naming} functionality`, () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    expect(gendiff(pathFirstFile, pathSecondFile, 'plain')).toBe(dataResult);
  });
}); */

describe.each([
  [path.resolve(curentDir, '__fixtures__/before.json'), path.resolve(curentDir, '__fixtures__/after.json'),
    path.resolve(curentDir, '__fixtures__/test_result.json'), 'json'],
//  [path.resolve(curentDir, '__fixtures__/before.yml'), path.resolve(curentDir, '__fixtures__/after.yml'),
//    path.resolve(curentDir, '__fixtures__/plain_test_result'), 'yml'],
//  [path.resolve(curentDir, '__fixtures__/before.ini'), path.resolve(curentDir, '__fixtures__/after.ini'),
//    path.resolve(curentDir, '__fixtures__/plain_test_result'), 'ini'],

])('testing plain files', (pathFirstFile, pathSecondFile, fileResult, naming) => {

  test(`test plain ${naming} functionality`, () => {
    const dataResult = fs.readFileSync(fileResult, 'utf-8');
    //expect(JSON.parse(dataResult) instanceof Object).toBe(true);
    expect(gendiff(pathFirstFile, pathSecondFile, 'json')).toBe(dataResult);
  });
});

