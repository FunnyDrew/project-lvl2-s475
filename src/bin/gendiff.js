#!/usr/bin/env node
import command from 'commander';
import gendiff from '..';

const program = command;
program
  .description('Compares two configuration files and shows a difference.')
  .option('-V, --version', 'output the version number', '1.0.0')
  .option('-f, --format [type]', 'output format')
  .arguments('<firstConfig> <secondConfig>')
  .action(function (firstConfig, secondConfig) {
    const init = process.cwd();
    const first = init+firstConfig;
    const second = init+secondConfig;
    const data = gendiff(first, second);
    console.log(data);
  });

//const fnc = gendiff('../__tests__/__fixtures__/before.json', '../__tests__/__fixtures__/after.json');
//console.log(fnc);

export default gendiff;
 program.parse(process.argv);
