const makeIndent = (level) => `${' '.repeat(2 * (level + 1))}`;


const getPrint = (obj, indentLevel, accStr) => {
  const keys = Object.keys(obj);
  const result = keys.reduce((keyAcc, key) => {
    const newIndentLevel = indentLevel + 1;
    const value = obj[key] instanceof Object ? `${getPrint(obj[key], newIndentLevel, accStr)}`
      : `${JSON.stringify(obj[key])}`;
    return [...keyAcc, `\n  ${makeIndent(newIndentLevel)}"${key}": ${value}`];
  }, []);
  return `{${result.join(',')}\n  ${makeIndent(indentLevel)}}`;
};

const stringify = (obj, indent) => (obj instanceof Object ? getPrint(obj, indent, []) : `${JSON.stringify(obj)}`);

const astRender = (tree, level, logAcc) => tree.reduce((keyAcc, node) => {
  if (node.children < 1) {
    if (node.value instanceof Array) {
      return [...keyAcc, `${makeIndent(level)}"${node.key}": {\n${makeIndent(level + 1)}"state": "${node.state}",\n${makeIndent(level + 1)}"value_before": ${stringify(node.value[0], level)},\n${makeIndent(level + 1)}"value_after": ${stringify(node.value[1], level)}\n${makeIndent(level)}}`];
    }
    return [...keyAcc, `${makeIndent(level)}"${node.key}": {\n${makeIndent(level + 1)}"state": "${node.state}",\n${makeIndent(level + 1)}"value": ${stringify(node.value, level)}\n${makeIndent(level)}}`];
  }
  return [...keyAcc, `${makeIndent(level)}"${node.key}": {\n${astRender(node.children, level + 1, logAcc).join(',\n')}\n${makeIndent(level)}}`];
}, logAcc);


export default astRender;
