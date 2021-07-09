"use strict";

/**
 * @param {string} word
 * @param {object} hash
 * @return {boolean}
 */
function formable(word, record) {
    for (let c of word) {
        record[c] = (record[c] || 0) - 1;
        if (record[c] < 0) {
            return false;
        }
    }
    return true;
}

/**
 * @param {string[]} words
 * @param {string} chars
 * @return {number}
 */
function countCharacters(words, chars) {
    const record = {};
    for (let c of chars) {
        record[c] = (record[c] || 0) + 1;
    }
    return words.reduce((acc, cur) => (acc += formable(cur, Object.assign({}, record)) ? cur.length : 0), 0);
}

// console.log(countCharacters(["cat", "bt", "hat", "tree"], "atach"));
// console.log(countCharacters(["hello", "world", "leetcode"], "welldonehoneyr"));
