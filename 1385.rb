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

p find_the_distance_value([4,5,8], [10,9,1,8], 2) == 2
p find_the_distance_value([1,4,2,3], [-4,-3,6,10,20,30], 3) == 2
p find_the_distance_value([2,1,100,3], [-5,-2,10,-3,7], 6) == 1
