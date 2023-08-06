class Solution {
public:
    string mergeAlternately(string word1, string word2) {
      auto it1 = word1.begin();
      auto it2 = word2.begin();
      string result;
      while (it1 != word1.end() && it2 != word2.end()) {
        result.push_back(*it1++);
        result.push_back(*it2++);
      }
      while (it1 != word1.end())
        result.push_back(*it1++);
      while (it2 != word2.end())
        result.push_back(*it2++);
      return result;
    }
};