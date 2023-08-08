class Solution {
public:
  vector<bool> kidsWithCandies(vector<int>& candies, int extraCandies) {
    auto maxCandy = *max_element(candies.begin(), candies.end());
    vector<bool> result(candies.size());
    for (auto i = 0; i < candies.size(); i++) {
      result[i] = candies[i] + extraCandies >= maxCandy;
    }
    return result;
  }
};
