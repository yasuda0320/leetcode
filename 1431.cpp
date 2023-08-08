class Solution {
public:
  vector<bool> kidsWithCandies(vector<int>& candies, int extraCandies) {
    auto maxCandy = *max_element(candies.begin(), candies.end());
    vector<bool> result;
    result.reserve(candies.size());
    for (auto candy : candies) {
      result.push_back(candy + extraCandies >= maxCandy);
    }
    return result;
  }
};
