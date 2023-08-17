# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  result = 0
  left = 0
  right = height.size - 1

  while left != right
    water = [height[left], height[right]].min * (right - left)
    result = [result, water].max
    height[left] < height[right] ? (left += 1) : (right -= 1)
  end
  result
end
