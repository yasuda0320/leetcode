def nums_hash(nums)
  result = {}
  nums.each do |it|
    result[it] ||= 0
    result[it] += 1
  end
  result
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!
  nums_hash = nums_hash(nums)
  
  pair_hash = {}
  nums.combination(2).each do |it|
    sum = it.sum
    pair_hash[sum] ||= []
    pair_hash[sum] << it
  end
  
  result = []
  pair_hash.each do |key, value|
    next unless other = pair_hash[target - key]
    value.product(other) {|it| result << it.flatten.sort}
  end
  result.uniq!
  
  result.select do |combi|
    valid = true
    nums_hash(combi).each do |key, value|
      if value > nums_hash[key]
        valid = false
        break
      end
    end
    valid
  end
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

# result = four_sum([-477,-476,-471,-462,-440,-400,-398,-394,-394,-393,-389,-386,-350,-346,-338,-315,-273,-249,-182,-172,-166,-161,-149,-116,-112,-109,-100,-73,-33,-26,-22,-11,6,8,13,19,56,78,101,102,111,140,155,158,181,205,211,225,232,242,254,265,281,308,310,320,320,364,366,381,385,387,443,496,496], 1236).sort
# expect = [].sort
# puts("%p %p" % [result == expect, result])


