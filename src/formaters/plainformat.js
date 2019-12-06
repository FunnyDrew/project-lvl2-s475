
const states = {
  deleted: () => 'was removed',
  changed: (before, after) => `was updated. From ${before} to ${after}`,
  added: (value) => `was added with value: ${value}`,
};

const astRender = (diffTree, nameAcc, strAcc) => diffTree.reduce((reportAcc, current) => {
  const name = `${nameAcc}${current.key}`;
  if (current.state === 'unchanged') return `${reportAcc}`;
  if (current.state === 'deleted') {
    return `${reportAcc}Property '${name}' ${states[current.state]()}\n`;
  }
  if (current.state === 'added') {
    const value = current.value instanceof Object ? '[complex value]' : `${current.value}`;
    return `${reportAcc}Property '${name}' ${states[current.state](value)}\n`;
  }
  if (current.children.length < 1) {
    const obj = current.value.map((item) => (item instanceof Object ? '[complex value]' : `${item}`));
    return `${reportAcc}Property '${name}' ${states[current.state](obj[0], obj[1])}\n`;
  }
  const arg = current.children;
  const newname = `${name}.`;
  return `${reportAcc}${astRender(arg, newname, strAcc)}`;
},
strAcc);

export default astRender;
