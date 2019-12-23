import { get } from 'lodash';
import treeRender from './treerender';
import plainRender from './plainrender';
import jsonRender from './jsonrender';

const renders = {
  tree: treeRender,
  plain: plainRender,
  json: jsonRender,
};

export default (format) => get(renders, format);
