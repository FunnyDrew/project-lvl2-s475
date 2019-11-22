import gendiff from '../src';

test('test diff functionality', () => {

  const data = gendiff(__dirname+"/__fixtures__/before.json", __dirname+"/__fixtures__/after.json");
  console.log(data);

  expect(data).toBe('{\n name: andrew\n age: 30\n status: active\n lastActivity: 10/11/2019\n}');

    /*expect(gendiff(jsonBefore, jsonAfter2)).toBe(
    '{\n name: andrew\n age: 30\n status: active\n+ lastActivity: 20/11/2019\n- lastActivity: 10/11/2019\n}');
    
    expect(gendiff(jsonBefore, jsonAfter3)).toBe(
    '{\n- name: andrew\n+ age: 40\n- age: 30\n- status: active\n+ lastActivity: 30/11/2019\n- lastActivity: 10/11/2019\n+ option: bunned\n+ reasons: ignore warning\n}');  */
});

