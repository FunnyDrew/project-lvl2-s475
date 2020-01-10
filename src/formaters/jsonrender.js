const render = (tree, ACC) => tree.reduce((acc, node) => {
  if (node.type === 'changed') {
    return {
      ...acc,
      [node.key]: {
        type: 'changed',
        before: node.before,
        after: node.after,
      },
    };
  }
  if (node.type === 'complex') return { ...acc, [node.key]: render(node.children, ACC) };

  return { ...acc, [node.key]: { type: node.type, value: node.value } };
}, ACC);

export default (tree) => JSON.stringify(render(tree, {}), null, 2);
