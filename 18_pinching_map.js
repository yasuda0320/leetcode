/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[][]}
 */
function fourSum(nums, target) {
  nums.sort((a, b) => a - b);
  let result = new Map();
  
  for (let i = 0; i <= nums.length - 4; i++) {
    if (nums[i] * 4 > target)
      break;
    for (let j = i + 1; j <= nums.length - 3; j++) {
      if (nums[i] + nums[j] * 3 > target)
        break;
      let sum2 = nums[i] + nums[j];
      let k = j + 1;
      let l = nums.length - 1;
      while (k < l) {
        let sum4 = sum2 + nums[k] + nums[l];
        if (sum4 == target) {
          let item = [nums[i], nums[j], nums[k], nums[l]];
          result.set(JSON.stringify(item), item);
          k++;
          l--;
        } else if (sum4 < target) {
          k++;
        } else {
          l--;
        }
      }
    }
  }
  
  return Array.from(result.values());
}

let result = fourSum([1,0,-1,0,-2,2], 0);
let expect = [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]];
console.log(JSON.stringify(result) === JSON.stringify(expect), result);
result = fourSum([2,2,2,2,2], 8).sort();
expect = [[2,2,2,2]].sort();
console.log(JSON.stringify(result) === JSON.stringify(expect), result);
result = fourSum([-2,-2,-2,-2,-2], -8).sort();
expect = [[-2,-2,-2,-2]].sort();
console.log(JSON.stringify(result) === JSON.stringify(expect), result);
result = fourSum([-1,0,1,2,-1,-4], -1).sort();
expect = [[-4,0,1,2],[-1,-1,0,1]].sort();
console.log(JSON.stringify(result) === JSON.stringify(expect), result);
