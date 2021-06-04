# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  result = []
  arr2.each { |i| result << [i] * arr1.count(i) }
  (result << arr1.difference(arr2).sort).flatten
end
