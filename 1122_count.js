/**
 * @param {number[]} arr1
 * @param {number[]} arr2
 * @return {number[]}
 */
function relativeSortArray(arr1, arr2) {
  let result = [];
  
  for (let i of arr2) {
    let n = arr1.reduce((acc, cur) => acc + (cur == i ? 1 : 0), 0);
    for (let j = 0; j < n; j++)
      result.push(i);
  }
  
  let others = [];
  for (let i of arr1) {
    if (!arr2.includes(i))
      others.push(i);
  }
  others.sort((a, b) => a - b);
  result.push(...others);
  
  return result;
}

console.log(JSON.stringify(relativeSortArray([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6])) === JSON.stringify([2,2,2,1,4,3,3,9,6,7,19]));
