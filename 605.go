func canPlaceFlowers(flowerbed []int, n int) bool {
    count := 0
    size := len(flowerbed)
    
    for i := 0; i < size; {
        if flowerbed[i] == 0 &&
            (i == 0 || flowerbed[i-1] == 0) &&
            (i == size-1 || flowerbed[i+1] == 0) {
            
            flowerbed[i] = 1
            count++
            i += 2 // 空きスロットが見つかった場合は一つ飛ばした位置に移動
        } else {
            i++ // 空きスロットが見つからない場合は次の位置に移動
        }
        
        if count >= n {
            return true
        }
    }
    
    return false
}
