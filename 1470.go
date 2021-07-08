func shuffle(nums []int, n int) []int {
  result := make([]int, 0, n * 2)
  for i, j := 0, n; i < n; i, j = i + 1, j + 1 {
    result = append(result, nums[i], nums[j])
  }
  return result
}
