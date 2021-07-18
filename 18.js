/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[][]}
 */
function fourSum(nums, target) {
  if (nums.length < 4)
    return [];
  nums.sort((a, b) => a - b);
  let result = [];
  
  for (let i = 0; i <= nums.length - 4; i++) {
    if (nums[i] * 4 > target)
      break;
    if (nums[i] === nums[i - 1])
      continue;
    for (let j = i + 1; j <= nums.length - 3; j++) {
      if (nums[i] + nums[j] * 3 > target)
        break;
      let sum2 = nums[i] + nums[j];
      let k = j + 1;
      let l = nums.length - 1;
      while (k < l) {
        let sum4 = sum2 + nums[k] + nums[l];
        if (sum4 == target) {
          result.push([nums[i], nums[j], nums[k], nums[l]]);
          while (j <= nums.length - 3 && nums[j] === nums[j + 1]) j++;
          while (k < l && nums[k] === nums[k + 1]) k++;
          k++;
          while (l > k && nums[l] === nums[l - 1]) l--;
          l--;
        } else if (sum4 < target) {
          k++;
        } else {
          l--;
        }
      }
    }
  }
  
  return result;
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
