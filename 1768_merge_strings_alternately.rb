# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  array1 = word1.split('')
  array2 = word2.split('')
  if array1.size > array2.size
    array2 += [nil] * (array1.size - array2.size).abs
  else
    array1 += [nil] * (array1.size - array2.size).abs
  end
  [array1, array2].transpose.flatten.compact.join
end
