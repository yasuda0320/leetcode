package main

import (
  "fmt"
  "sort"
)

func maximumUnits(boxTypes [][]int, truckSize int) int {
  sort.Slice(boxTypes, func(i, j int) bool { return boxTypes[i][1] > boxTypes[j][1] })
  total := 0
  for _, v := range boxTypes {
    if v[0] <= truckSize {
      total += v[1] * v[0]
    } else {
      total += v[1] * truckSize
    }
    truckSize -= v[0]
    if truckSize <= 0 {
      break
    }
  }
  return total
}

func main() {
  fmt.Println(maximumUnits([][]int{{1, 3}, {2, 2}, {3, 1}}, 4) == 8)
  fmt.Println(maximumUnits([][]int{{5, 10}, {2, 5}, {4, 7}, {3, 9}}, 10) == 91)
}
