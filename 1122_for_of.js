/**
 * @param {number[]} arr1
 * @param {number[]} arr2
 * @return {number[]}
 */
function relativeSortArray(arr1, arr2) {
  const other = -1;
  let map = new Map();
  for (let i = 0; i < arr2.length; i++)
    map.set(arr2[i], []);
  map.set(other, []);
  
  for (let i = 0; i < arr1.length; i++)
    (map.get(arr1[i]) || map.get(other)).push(arr1[i]);
  map.get(other).sort((a, b) => a - b);
  
  let result = []
  for (let [key, value] of map)
    result.push(...value);
  return result;
}

console.log(JSON.stringify(relativeSortArray([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6])) === JSON.stringify([2,2,2,1,4,3,3,9,6,7,19]));
