func canPlaceFlowers(flowerbed []int, n int) bool {
    flowerbed = append([]int{0}, flowerbed...)
    flowerbed = append(flowerbed, 0)
    
    for i := 1; i < len(flowerbed) - 1 && n > 0; i++ {
        if flowerbed[i] == 0 && flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0 {
            n--
            i++ // Skip adjacent plot
        }
    }
    
    return n <= 0
}
