Array.prototype.equals = function(other) {
  return JSON.stringify(this) === JSON.stringify(other);
}

Array.prototype.uniq = function() {
  let map = new Map();
  for (let item of this)
    map.set(JSON.stringify(item), item);
  return Array.from(map.values());
}

Array.prototype.product = function(other) {
  let array = []
  for (let i of this) {
    for (let j of other)
      array.push([i, j]);
  }
  return array;
}

/**
 * @param {number[]} nums
 * @return {Map}
 */
function countNums(nums) {
  let result = new Map();
  for (let num of nums) {
    let count = result.get(num)
    result.set(num, count === undefined ? 1 : count + 1);
  }
  return result;
}

/**
 * @param {number[]} nums
 * @return {number[][]}
 */
function combination(nums) {
  let result = [];
  for (let i = 0; i < nums.length - 1; i++) {
    for (let j = i + 1; j < nums.length; j++) {
      result.push([nums[i], nums[j]]);
    }
  }
  return result;
}

/**
 * @param {number[][]} pairs
 * @return {Map}
 */
function groupBySum(pairs) {
  let result = new Map();
  for (let pair of pairs) {
    let key = pair[0] + pair[1];
    let value = result.get(key);
    value === undefined ? result.set(key, [pair]) : value.push(pair);
  }
  return result;
}

/**
 * @param {Map} sumMap
 * @param {number} target
 * @return {number[][]}
 */
function matchPairs(sumMap, target) {
  let result = [];
  for (let [key, value] of sumMap) {
    let other = sumMap.get(target - key);
    if (other === undefined)
      continue;
    let product = value.product(other).map(it => it.flat().sort((a, b) => a - b));
    for (let it of product)
      result.push(it);
  }
  return result.uniq();
}

/**
 * @param {Map} counts
 * @param {number[][]} candidates
 * @return {number[][]}
 */
function selectValid(counts, candidates) {
  return candidates.filter(candidate => {
    let valid = true;
    let map = countNums(candidate);
    for (let [key, value] of map) {
      if (value > counts.get(key)) {
        valid = false;
        break;
      }
    }
    return valid;
  });
}

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[][]}
 */
function fourSum(nums, target) {
  nums.sort((a, b) => a - b);
  let pairs = combination(nums);
  let sumMap = groupBySum(pairs);
  let candidates = matchPairs(sumMap, target);
  let counts = countNums(nums);
  return selectValid(counts, candidates);
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
