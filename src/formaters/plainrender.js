
const elementToStr = (obj) => (obj instanceof Object ? '[complex value]' : `${obj}`);


const render = (tree, nameAcc, logAcc) => tree.reduce((acc, node) => {
  const name = `${nameAcc}${node.key}`;
  switch (node.type) {
    case 'unchanged':
      return `${acc}`;
    case 'deleted':
      return `${acc}Property '${name}' was removed\n`;
    case 'added':
      return `${acc}Property '${name}' was added with value: ${elementToStr(node.value)}\n`;
    case 'changed':
      return `${acc}Property '${name}' was updated. From ${elementToStr(node.before)
      } to ${elementToStr(node.after)}\n`;
    case 'complex':
      return `${acc}${render(node.children, `${name}.`, logAcc)}`;
    default: return '';
  }
},
logAcc);

const makeRender = (tree) => `${render(tree, '', '')}`;

export default makeRender;
