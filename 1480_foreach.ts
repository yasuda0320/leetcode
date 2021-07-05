function runningSum(nums: number[]): number[] {
  const sums = []
  nums.forEach((n, i) => sums[i] = (sums[i - 1] || 0) + nums[i])
  return sums
};
