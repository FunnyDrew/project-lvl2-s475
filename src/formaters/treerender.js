import { isObject, has } from 'lodash';


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

const render = (tree, indentLevel, renderAcc) => tree.reduce((acc, node) => {
  if (node.state === 'added') {
    return [...acc, [makeIndent(indentLevel),
      '+', ` ${node.key}: `,
      stringify(node.value, indentLevel)].join('')];
  }
  if (node.state === 'unchanged') {
    return [...acc, [makeIndent(indentLevel),
      ' ', ` ${node.key}: `,
      stringify(node.value, indentLevel)].join('')];
  }
  if (node.state === 'deleted') {
    return [...acc, [makeIndent(indentLevel),
      '-', ` ${node.key}: `,
      stringify(node.value, indentLevel)].join('')];
  }

  if (has(node, 'children')) {
    const arg = node.children;
    return [...acc, `${makeIndent(indentLevel)}  ${node.key}: {`,
      render(arg, indentLevel + 1, renderAcc).join('\n'),
      `  ${makeIndent(indentLevel)}}`];
  }
  const [valueBefore, valueAfter] = node.value;
  return [...acc, [makeIndent(indentLevel),
    `- ${node.key}: `, stringify(valueBefore, indentLevel)].join(''),
  [makeIndent(indentLevel), `+ ${node.key}: `, stringify(valueAfter, indentLevel)].join('')];
},
renderAcc);

const makeRender = (tree) => `{\n${render(tree, 0, []).join('\n')}\n}`;

export default makeRender;
