func mapInt(x []int, f func(int) int) []int {
    r := make([]int, len(x))
    for i, e := range x { r[i] = f(e) }
    return r
}

func runningSum(nums []int) []int {
  sum := 0
  return mapInt(nums, func(num int) int { sum += num; return sum })
}
