import _ from 'lodash';
import parser from './parser';
import fullRender from './formaters/fullformat';
import plainRender from './formaters/plainformat';
import jsonRender from './formaters/jsonformat';

const diff = (firstFilePath, secondFilePath, format = 'tree') => {
  const objBefore = parser(firstFilePath);

  const objAfter = parser(secondFilePath);

  const makeDiffAST = (firstObj, secondObj, acc) => {
    const firstObjKeys = Object.keys(firstObj);
    const mainDiff = firstObjKeys.reduce((firstAcc, curKey) => {
      if (!_.has(secondObj, curKey)) {
        return [...firstAcc, {
          key: curKey, state: 'deleted', value: firstObj[curKey], children: [],
        }];
      }

      const curKeyValueFirst = firstObj[curKey];
      const curKeyValueSecond = secondObj[curKey];

      if (_.isEqual(curKeyValueFirst, curKeyValueSecond)) {
        return [...firstAcc, {
          key: curKey, state: 'unchanged', value: firstObj[curKey], children: [],
        }];
      }

      if (curKeyValueFirst instanceof Object && curKeyValueSecond instanceof Object) {
        return [...firstAcc, {
          key: curKey, state: 'changed', value: {}, children: makeDiffAST(curKeyValueFirst, curKeyValueSecond, []),
        }];
      }

      return [...firstAcc, {
        key: curKey, state: 'changed', value: [firstObj[curKey], secondObj[curKey]], children: [],
      }];
    }, acc);

    const omitedObj = _.omit(secondObj, firstObjKeys);

    const omitedKeys = Object.keys(omitedObj);

    return omitedKeys.reduce((omitedAcc, item) => [...omitedAcc, { key: item, state: 'added', value: omitedObj[item], children: [],
    }], mainDiff);
  };

  const ast = makeDiffAST(objBefore, objAfter, []);

  if (format === 'plain') {
    return `${plainRender(ast, '', '')}`;
  }
  if (format === 'json') {
    const render = jsonRender(ast, 0, []);
    console.log('!!!!!!!!!!!!!!!!!!');
    console.log(render.join(',\n'));
    return render.join('\n,');
  }

  return `{${fullRender(ast, 0, '')}\n}`;
};

export default diff;
