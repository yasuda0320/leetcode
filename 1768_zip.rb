# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  array1 = word1.split('')
  array2 = word2.split('')
  diff = array1.size - array2.size
  diff >= 0 ? (array2 += [nil] * diff) : (array1 += [nil] * -diff)
  array1.zip(array2).flatten.compact.join
end
