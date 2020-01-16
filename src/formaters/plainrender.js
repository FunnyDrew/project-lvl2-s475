
const elementToStr = (obj) => (obj instanceof Object ? '[complex value]' : `${obj}`);


const render = (tree, nameAcc) => {
  const nodeStates = tree.map((node) => {
    const name = `${nameAcc}${node.key}`;
    switch (node.type) {
      case 'unchanged':
        return '';
      case 'deleted':
        return `Property '${name}' was removed`;
      case 'added':
        return `Property '${name}' was added with value: ${elementToStr(node.value)}`;
      case 'changed':
        return `Property '${name}' was updated. From ${elementToStr(node.before)
        } to ${elementToStr(node.after)}`;
      case 'complex':
        return render(node.children, `${name}.`);
      default: throw Error('Unacceptable data type in ast-tree');
    }
  });

  return nodeStates.filter((item) => item !== '').join('\n');
};

const makeRender = (tree) => render(tree, '');

export default makeRender;
