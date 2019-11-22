import gendiff from '../src';

const objBefore = {
  name: 'andrew',
  age: 30,
  status: 'active',
  lastActivity: '10/11/2019',
};

const objAfter1 = {
  name: 'andrew',
  age: 30,
  status: 'active',
  lastActivity: '10/11/2019',
};

const objAfter2 = {
  name: 'andrew',
  age: 30,
  status: 'active',
  lastActivity: '20/11/2019',
};

const objAfter3 = {
  age: 40,
  lastActivity: '30/11/2019',
  option: 'bunned',
  reasons: 'ignore warning',
};

const jsonBefore = JSON.stringify(objBefore);
const jsonAfter1 = JSON.stringify(objAfter1);
const jsonAfter2 = JSON.stringify(objAfter2);
const jsonAfter3 = JSON.stringify(objAfter3);

test('test diff functionality', () => {
  expect(gendiff(jsonBefore, jsonAfter1)).toBe(

    '{\n name: andrew\n age: 30\n status: active\n lastActivity: 10/11/2019\n}');

    expect(gendiff(jsonBefore, jsonAfter2)).toBe(
    '{\n name: andrew\n age: 30\n status: active\n+ lastActivity: 20/11/2019\n- lastActivity: 10/11/2019\n}');
    
    expect(gendiff(jsonBefore, jsonAfter3)).toBe(
    '{\n- name: andrew\n+ age: 40\n- age: 30\n- status: active\n+ lastActivity: 30/11/2019\n- lastActivity: 10/11/2019\n+ option: bunned\n+ reasons: ignore warning\n}');  
});

const str = '{a: b, c: d}'

