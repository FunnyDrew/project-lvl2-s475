#!/usr/bin/env node
import path from 'path';
import command from 'commander';
import gendiff from '..';

const program = command;
program
  .description('Compares two configuration files and shows a difference.')
  .option('-V, --version', 'output the version number', '1.0.0')
  .option('-f, --format [plain, tree = default]', 'output format')
  .arguments('<firstConfig> <secondConfig>')
  .action((firstFile, secondFile) => {
    const cwd = process.cwd();
    const firstFilePath = path.resolve(cwd, firstFile);
    const secondFilePath = path.resolve(cwd, secondFile);
    const data = gendiff(firstFilePath, secondFilePath, program.format);
    console.log(data);
  });

export default gendiff;
program.parse(process.argv);
