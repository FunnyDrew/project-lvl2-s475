import { isObject } from 'lodash';


const makeIndent = (depth) => `${' '.repeat(2 * (2 * depth + 1))}`;

const stringify = (arg, depth) => {
  if (!isObject(arg)) return arg;
  const keys = Object.keys(arg);
  const result = keys.map((key) => {
    const value = isObject(arg[key]) ? stringify(arg[key], depth + 1).join('\n') : `${arg[key]}`;
    return `${makeIndent(depth + 1)}  ${key}: ${value}`;
  });
  return ['{', result, `${makeIndent(depth)}  }`].join('\n');
};

const render = (tree, depth) => {
  const renderString = tree.map((node) => {
    switch (node.type) {
      case 'added':
        return [makeIndent(depth), '+', ` ${node.key}: `, stringify(node.value, depth)].join('');

      case 'unchanged':
        return [makeIndent(depth), ' ', ` ${node.key}: `, stringify(node.value, depth)].join('');

      case 'deleted':
        return [makeIndent(depth), '-', ` ${node.key}: `, stringify(node.value, depth)].join('');

      case 'changed':
        return [makeIndent(depth), `- ${node.key}: `, stringify(node.before, depth), '\n',
          makeIndent(depth), `+ ${node.key}: `, stringify(node.after, depth)].join('');

      case 'complex':
        return [makeIndent(depth), ' ', ` ${node.key}: `, render(node.children, depth + 1)].join('');

      default: throw Error('Unaceptable data type in ast-tree');
    }
  });

  const lastBracket = depth === 0 ? '}' : `${makeIndent(depth - 1)}  }`;
  return ['{', ...renderString, lastBracket].join('\n');
};

const makeRender = (tree) => render(tree, 0);

export default makeRender;
