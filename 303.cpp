class NumArray {
  vector<int> sums;
  
public:
  NumArray(vector<int>& nums) {
    int size = nums.size();
    sums = vector<int>(size + 1, 0);
    for (int i = 0; i < size; i++) {
      sums[i + 1] = sums[i] + nums[i];
    }
  }
  
  int sumRange(int left, int right) {
    return sums[right + 1] - sums[left];
  }
};

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray* obj = new NumArray(nums);
 * int param_1 = obj->sumRange(left,right);
 */
