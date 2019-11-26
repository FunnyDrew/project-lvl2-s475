
import path from 'path';
import fs from 'fs';
import gendiff from '../src';

test('test json functionality', () => {
  const pathFirstFile = path.resolve(__dirname, '__fixtures__/before.json');
  const pathSecondFile = path.resolve(__dirname, '__fixtures__/after.json');
  const pathResultFile = path.resolve(__dirname, '__fixtures__/result');

  const dataResult = fs.readFileSync(pathResultFile, 'utf-8');
  expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
});

test('test yaml functionality', () => {
  const pathFirstFile = path.resolve(__dirname, '__fixtures__/before.yml');
  const pathSecondFile = path.resolve(__dirname, '__fixtures__/after.yml');
  const pathResultFile = path.resolve(__dirname, '__fixtures__/result');

  const dataResult = fs.readFileSync(pathResultFile, 'utf-8');
  expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
});

test('test ini functionality', () => {
  const pathFirstFile = path.resolve(__dirname, '__fixtures__/before.ini');
  const pathSecondFile = path.resolve(__dirname, '__fixtures__/after.ini');
  const pathResultFile = path.resolve(__dirname, '__fixtures__/result');

  const dataResult = fs.readFileSync(pathResultFile, 'utf-8');
  expect(gendiff(pathFirstFile, pathSecondFile)).toBe(dataResult);
});
