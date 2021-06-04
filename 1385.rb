# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  count = arr1.size
  arr1.each do |i|
    arr2.each do |j|
      if (i - j).abs <= d
        count -= 1
        break
      end
    end
  end
  count
end
