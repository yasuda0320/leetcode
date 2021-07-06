# @param {String} word
# @param {Hash} hash
# @return {Boolean}
def formable(word, hash)
  word.each_char do |c|
    hash[c] = (hash[c] || 0) - 1
    return false if hash[c] < 0
  end
  true
end

# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  hash = {}
  chars.each_char {|c| hash[c] = (hash[c] || 0) + 1}
  words.reduce(0) {|acc, word| acc += formable(word, hash.dup) ? word.length : 0}
end
