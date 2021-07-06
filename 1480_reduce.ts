function runningSum(nums: number[]): number[] {
  const sums = []
  nums.reduce((acc, cur) => (sums.push(acc + cur), acc + cur), 0)
  return sums
};
