import fs from 'fs';
import path from 'path';

const fileToJson = (dir) => {
  const correctPath2 = path.resolve(__dirname, dir);
  const correctPath = dir;

  console.log('correctPath2 = ' + correctPath2);
  console.log(correctPath);
  const data = fs.readFileSync(correctPath2, 'utf-8');

  return data;
};

export default fileToJson;
