# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  i = 0
  while i < flowerbed.length && n > 0
    if flowerbed[i] == 0 &&
        (i == 0 || flowerbed[i - 1] == 0) &&
        (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)
      n -= 1
      i += 1 # Skip adjacent plot
    end
    i += 1
  end
  n <= 0
end
