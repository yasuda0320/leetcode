/**
 * @param {string} word
 * @param {object} hash
 * @return {boolean}
 */
function formable(word, hash) {
  for (let c of word) {
    hash[c] = (hash[c] || 0) - 1
    if (hash[c] < 0) {
      return false
    }
  }
  return true
}

/**
 * @param {string[]} words
 * @param {string} chars
 * @return {number}
 */
function countCharacters(words, chars) {
  const hash = {}
  for (let c of chars) {
    hash[c] = (hash[c] || 0) + 1
  }
  return words.reduce((acc, cur) => (acc += formable(cur, Object.assign({}, hash)) ? cur.length : 0), 0)
}

// console.log(countCharacters(["cat","bt","hat","tree"], "atach"));
// console.log(countCharacters(["hello","world","leetcode"], "welldonehoneyr"));
