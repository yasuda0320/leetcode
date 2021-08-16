class NumArray {
  constructor(nums) {
    this.sums = Array(nums.length + 1);
    this.sums[0] = 0;
    for (let i = 0; i < nums.length; i++) {
      this.sums[i + 1] = this.sums[i] + nums[i];
    }
  }
  
  sumRange(left, right) {
    return this.sums[right + 1] - this.sums[left];
  }
}
