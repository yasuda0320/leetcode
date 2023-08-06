class Solution {
public:
    string mergeAlternately(string word1, string word2) {
      auto it1 = word1.begin();
      auto it2 = word2.begin();
      string result;
      auto left1 = true, left2 = true;
      while (left1 || left2) {
        if (left1) {
          result.push_back(*it1++);
          if (it1 == word1.end())
            left1 = false;
        }
        if (left2) {
          result.push_back(*it2++);
          if (it2 == word2.end())
            left2 = false;
        }
      }
      return result;
    }
};