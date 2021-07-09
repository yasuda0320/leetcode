"use strict";

function runningSum(nums) {
    const sums = [];
    nums.reduce((acc, cur) => (sums.push(acc + cur), acc + cur), 0);
    return sums;
}

// console.log(runningSum([1, 2, 3, 4]));
// console.log(runningSum([1, 1, 1, 1, 1]));
// console.log(runningSum([3, 1, 2, 10, 1]));
