# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  left = 1
  right = flowerbed.size
  flowerbed = [0] + flowerbed + [0]
  n.times {
    found = false
    (left..right).each {
      next if flowerbed[(_1 - 1)..(_1 + 1)].sum != 0
      left = _1 + 2
      found = true
      break
    }
    return false unless found
  }
  true
end
