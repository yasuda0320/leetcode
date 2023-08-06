func mergeAlternately(word1 string, word2 string) string {
  len1 := len(word1)
  len2 := len(word2)
  var result string
  for i := 0; i < len1 || i < len2; i++ {
    if i < len1 {
      result += string(word1[i])
    }
    if i < len2 {
      result += string(word2[i])
    }
  }
  return result
}