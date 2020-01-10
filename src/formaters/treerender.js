import { isObject } from 'lodash';


const makeIndent = (level) => `${' '.repeat(2 * (2 * level + 1))}`;

const stringify = (arg, indentLevel, accStr) => {
  if (!isObject(arg)) return `${arg}`;
  const keys = Object.keys(arg);
  const result = keys.reduce((keyAcc, key) => {
    const value = arg[key] instanceof Object ? `${stringify(arg[key], indentLevel + 1, accStr)}` : `${arg[key]}`;
    return `${keyAcc}\n  ${makeIndent(indentLevel + 1)}${key}: ${value}`;
  }, '');
  return `{${result}\n  ${makeIndent(indentLevel)}}`;
};

const render = (tree, indentLevel) => {
  const renderString = tree.map((node) => {
    switch (node.type) {
      case 'added': return [makeIndent(indentLevel),
        '+', ` ${node.key}: `,
        stringify(node.value, indentLevel)].join('');

      case 'unchanged': return [makeIndent(indentLevel),
        ' ', ` ${node.key}: `,
        stringify(node.value, indentLevel)].join('');

      case 'deleted': return [makeIndent(indentLevel),
        '-', ` ${node.key}: `,
        stringify(node.value, indentLevel)].join('');

      case 'changed': return [makeIndent(indentLevel),
        `- ${node.key}: `, stringify(node.before, indentLevel), '\n',
        makeIndent(indentLevel), `+ ${node.key}: `, stringify(node.after, indentLevel)].join('');

      case 'complex': return [makeIndent(indentLevel), ' ', ` ${node.key}: `,
        render(node.children, indentLevel + 1)].join('');

      default: return '';
    }
  });

  const lastBracket = indentLevel === 0 ? '}' : `${makeIndent(indentLevel - 1)}  }`;
  return ['{', ...renderString, lastBracket].join('\n');
};

const makeRender = (tree) => render(tree, 0);

export default makeRender;
