
import path from 'path';
import fs from 'fs';
import gendiff from '../src';

const curentDir = __dirname;
const pathToFixture = path.resolve(curentDir, '__fixtures__');

describe.each([
  ['json'], ['yml'], ['ini'],
])('testing tree output format', (fileExt) => {
  test(`test tree ${fileExt} functionality`, () => {
    const pathToBeforeFile = `${pathToFixture}/before.${fileExt}`;
    const pathToAfterFile = `${pathToFixture}/after.${fileExt}`;
    const pathToResult = `${pathToFixture}/tree_test_result`;
    const dataResult = fs.readFileSync(pathToResult, 'utf-8');
    expect(gendiff(pathToBeforeFile, pathToAfterFile)).toBe(dataResult);
  });
});

describe.each([
  ['json'], ['yml'], ['ini'],
])('testing plain output format', (fileExt) => {
  test(`test plain ${fileExt} functionality`, () => {
    const pathToBeforeFile = `${pathToFixture}/before.${fileExt}`;
    const pathToAfterFile = `${pathToFixture}/after.${fileExt}`;
    const pathToResult = `${pathToFixture}/plain_test_result`;
    const dataResult = fs.readFileSync(pathToResult, 'utf-8');
    expect(gendiff(pathToBeforeFile, pathToAfterFile, 'plain')).toBe(dataResult);
  });
});

describe.each([
  ['json'], ['yml'], ['ini'],
])('testing json output format', (fileExt) => {
  test(`test json ${fileExt} functionality`, () => {
    const pathToBeforeFile = `${pathToFixture}/before.${fileExt}`;
    const pathToAfterFile = `${pathToFixture}/after.${fileExt}`;
    const pathToResult = `${pathToFixture}/test_result.json`;
    const dataResult = fs.readFileSync(pathToResult, 'utf-8');
    expect(gendiff(pathToBeforeFile, pathToAfterFile, 'json')).toBe(dataResult);
  });
});
