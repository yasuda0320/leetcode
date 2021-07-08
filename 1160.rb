# @param {String} word
# @param {String} chars
# @return {Boolean}
def formable?(word, chars)
  array = chars.chars
  word.each_char do |c|
    index = array.index(c)
    return false unless index
    array.delete_at(index)
  end
  true
end

# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
    result = 0
    words.each do |word|
      result += word.length if formable?(word, chars)
    end
    result
end

# p count_characters(["cat","bt","hat","tree"], "atach")
# p count_characters(["hello","world","leetcode"], "welldonehoneyr")
