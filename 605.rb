# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  flowerbed += [0, 0]
  count = 0
  i = 0

  while i < flowerbed.size - 2
    if flowerbed[i] == 0 && flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0
      count += 1
      i += 2
    else
      i += 1
    end
    return true if count >= n
  end
  false
end
