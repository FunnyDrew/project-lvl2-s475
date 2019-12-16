import { isObject } from 'lodash';

const makeIndent = (level) => `${' '.repeat(2 * (level + 1))}`;

const hasChildren = (node) => node.children.length > 0;

const stringify = (arg, indentLevel, accStr) => {
  if (!isObject(arg)) return `${JSON.stringify(arg)}`;
  const keys = Object.keys(arg);
  const result = keys.reduce((keyAcc, key) => {
    const value = arg[key] instanceof Object ? `${stringify(arg[key], indentLevel + 1, accStr)}`
      : `${JSON.stringify(arg[key])}`;
    return [...keyAcc, `\n  ${makeIndent(indentLevel + 1)}"${key}": ${value}`];
  }, []);
  return `{${result.join(',')}\n  ${makeIndent(indentLevel)}}`;
};

const render = (tree, indentLevel, renderAcc) => tree.reduce((acc, node) => {
  if (!hasChildren(node)) {
    if (node.value instanceof Array) {
      return [...acc, [makeIndent(indentLevel), `"${node.key}": {\n`,
        makeIndent(indentLevel + 1), `"state": "${node.state}",\n`,
        makeIndent(indentLevel + 1), '"value_before": ', stringify(node.value[0], indentLevel), ',\n',
        makeIndent(indentLevel + 1), '"value_after": ', stringify(node.value[1], indentLevel), '\n',
        makeIndent(indentLevel), '}'].join('')];
    }
    return [...acc, [makeIndent(indentLevel), `"${node.key}": {\n`,
      makeIndent(indentLevel + 1), `"state": "${node.state}",\n`,
      makeIndent(indentLevel + 1), '"value": ', stringify(node.value, indentLevel), '\n',
      makeIndent(indentLevel), '}'].join('')];
  }
  return [...acc, [makeIndent(indentLevel), `"${node.key}": {\n`,
    render(node.children, indentLevel + 1, renderAcc).join(',\n'), '\n',
    makeIndent(indentLevel), '}'].join('')];
}, renderAcc);

export default (tree) => `{\n${render(tree, 0, []).join(',\n')}\n}`;
