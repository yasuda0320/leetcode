class Solution {
public:
    int maxArea(vector<int>& height) {
        long result = 0;
        int left = 0;
        int right = height.size() - 1;
         
        while (left < right) {
            long water = min(height[left], height[right]) * (right - left);
            result = max(result, water);
            height[left] < height[right] ? left++ : right--;
        }
        return result;
    }
};
