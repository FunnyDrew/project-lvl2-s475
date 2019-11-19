#!/usr/bin/env node
import command from 'commander';
//const program = require('commander');
const  program = command;
program
.description('Compares two configuration files and shows a difference.')
.option('-V, --version', 'output the version number', '1.0.0')
.option('-f, --format [type]', 'output format' )
.arguments('<firstConfig> <secondConfig>');


program.parse(process.argv);

  