struct Solution {}

impl Solution {
  pub fn running_sum(nums: Vec<i32>) -> Vec<i32> {
    let mut result = nums.clone();
    for i in 1..result.len() {
      result[i] += result[i - 1]
    }
    result
  }
}

fn main() {
  let result = Solution::running_sum(vec![1,2,3,4]);
  println!("{} {:?}", result == [1,3,6,10], result);
  
  let result = Solution::running_sum(vec![1,1,1,1,1]);
  println!("{} {:?}", result == [1,2,3,4,5], result);
  
  let result = Solution::running_sum(vec![3,1,2,10,1]);
  println!("{} {:?}", result == [3,4,6,16,17], result);
}
