# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  nums.each_with_index { |n, i| nums[i] += nums[i - 1] if i > 0 }
end
