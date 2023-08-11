# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = {}
  array = s.split('')
  array.each_with_index { vowels[_2] = _1 if %w(a e i o u A E I O U).include?(_1) }
  vowels = vowels.keys.zip(vowels.values.reverse).to_h
  vowels.each {array[_1] = _2}
  array.join
end
