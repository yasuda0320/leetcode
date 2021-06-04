# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
#   result = []
#   (nums.length / 2).times { |i| result << nums[i] << nums[i + n] }
#   result
  nums[...n].zip(nums[n..]).flatten
end
