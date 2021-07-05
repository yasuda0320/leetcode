function runningSum(nums: number[]): number[] {
  let sums = nums.slice()
  for (let i = 1; i < nums.length; i++) {
    sums[i] += sums[i - 1]
  }
  return sums
};
