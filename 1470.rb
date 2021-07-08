# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
#   result = []
#   (nums.length / 2).times { |i| result << nums[i] << nums[i + n] }
#   result
  nums[...n].zip(nums[n..]).flatten
end

# p shuffle([2,5,1,3,4,7], 3)
# p shuffle([1,2,3,4,4,3,2,1], 4)
# p shuffle([1,1,2,2], 2)
