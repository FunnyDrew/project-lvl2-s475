import { has } from 'lodash';

const states = {
  deleted: () => 'was removed',
  changed: (before, after) => `was updated. From ${before} to ${after}`,
  added: (value) => `was added with value: ${value}`,
};

const render = (tree, nameAcc, logAcc) => tree.reduce((acc, node) => {
  const name = `${nameAcc}${node.key}`;
  if (node.state === 'unchanged') return `${acc}`;
  if (node.state === 'deleted') {
    return `${acc}Property '${name}' ${states[node.state]()}\n`;
  }
  if (node.state === 'added') {
    const value = node.value instanceof Object ? '[complex value]' : `${node.value}`;
    return `${acc}Property '${name}' ${states[node.state](value)}\n`;
  }
  if (!has(node, 'children')) {
    const obj = node.value.map((item) => (item instanceof Object ? '[complex value]' : `${item}`));
    return `${acc}Property '${name}' ${states[node.state](obj[0], obj[1])}\n`;
  }
  const arg = node.children;
  const newname = `${name}.`;
  return `${acc}${render(arg, newname, logAcc)}`;
},
logAcc);

const makeRender = (tree) => `${render(tree, '', '')}`;

export default makeRender;
