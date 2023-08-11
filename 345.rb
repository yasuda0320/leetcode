# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = {
    'a' => true, 'e' => true, 'i' => true, 'o' => true, 'u' => true,
    'A' => true, 'E' => true, 'I' => true, 'O' => true, 'U' => true,
  }
  left = 0
  right = s.length - 1

  while left < right
    (left += 1; next) if !vowels[s[left]]
    (right -= 1; next) if !vowels[s[right]]
    s[left], s[right] = s[right], s[left]
    left += 1
    right -= 1
  end
  s
end