import _ from 'lodash';
const makeIndent = (level) => `${' '.repeat(2 * (level + 1))}`;

const stringify = (object, level, stingAcc) => {
  const keys = Object.key(object);
  return keys.reduce((acc, item) => {

  }, stringAcc);
}


const astRender = (tree, level, logAcc) => tree.reduce((keyAcc, node) => {
  if (node.children < 1) {
    if (node.value instanceof Array) {
      return [...keyAcc, `"${node.key}": {\n${makeIndent(level)}"state": "${node.state}",\n${makeIndent(level)}"value_before": ${JSON.stringify(node.value[0])},\n${makeIndent(level)}"value_after": ${JSON.stringify(node.value[1])}\n}`];
    }
    return [...keyAcc, `"${node.key}": {\n${makeIndent(level)}state: "${node.state}",\n${makeIndent(level)}value: ${JSON.stringify(node.value)}\n}`];
  }
  return [...keyAcc, `"${node.key}": { \n${astRender(node.children, level + 1, logAcc)}`];
}, logAcc);


export default astRender;
