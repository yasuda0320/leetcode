class Solution {
public:
    string mergeAlternately(string word1, string word2) {
      auto size1 = word1.size();
      auto size2 = word2.size();
      auto count = std::max(size1, size2);
      string result;
      for (auto i = 0; i < count; i++) {
        if (i < size1)
          result += word1[i];
        if (i < size2)
          result += word2[i];
      }
      return result;
    }
};