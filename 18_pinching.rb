# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!
  result = []
  
  (0..nums.length - 4).each do |i|
    break if nums[i] * 4 > target
    next if i > 0 && nums[i] == nums[i - 1]
    j = i + 1
    while j <= nums.length - 3
      break if nums[i] + nums[j] * 3 > target
      sum2 = nums[i] + nums[j]
      k = j + 1
      l = nums.length - 1
      while k < l
        sum4 = sum2 + nums[k] + nums[l]
        case
        when sum4 == target
          result << [nums[i], nums[j], nums[k], nums[l]]
          j += 1 while nums[j] == nums[j + 1]
          k += 1 while nums[k] == nums[k + 1] && k < l
          k += 1
          l -= 1 while nums[l] == nums[l - 1] && k < l
          l -= 1
        when sum4 < target
          k += 1
        else
          l -= 1
        end 
      end
      j += 1
    end
  end
  
  result
end

result = four_sum([1,0,-1,0,-2,2], 0).sort
expect = [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]].sort
puts("%p %p" % [result == expect, result])
result = four_sum([2,2,2,2,2], 8).sort
expect = [[2,2,2,2]].sort
puts("%p %p" % [result == expect, result])
result = four_sum([-2,-2,-2,-2,-2], -8).sort
expect = [[-2,-2,-2,-2]].sort
puts("%p %p" % [result == expect, result])
result = four_sum([-1,0,1,2,-1,-4], -1).sort
expect = [[-4,0,1,2],[-1,-1,0,1]].sort
puts("%p %p" % [result == expect, result])
