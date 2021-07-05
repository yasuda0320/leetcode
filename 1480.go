func runningSum(nums []int) []int {
  sums := nums[:]
  for i := 1; i < len(nums); i++ {
    sums[i] += sums[i - 1]
  }
  return sums
}
