struct Solution {}

impl Solution {
  pub fn four_sum(mut nums: Vec<i32>, target: i32) -> Vec<Vec<i32>> {
    if nums.len() < 4 { return vec![]; }
    nums.sort();
    let mut result = vec![];
    
    let mut i = 0;
    while i <= nums.len() - 4 {
      if nums[i] * 4 > target { break; }
      if i > 0 && nums[i] == nums[i - 1] { i += 1; continue; }
      let mut j = i + 1;
      while j <= nums.len() - 3 {
        if nums[i] + nums[j] * 3 > target { break; }
        let sum2 = nums[i] + nums[j];
        let mut k = j + 1;
        let mut l = nums.len() - 1;
        while k < l {
          let sum4 = sum2 + nums[k] + nums[l];
          if sum4 == target {
            result.push(vec![nums[i], nums[j], nums[k], nums[l]]);
            while j <= nums.len() - 3 && nums[j] == nums[j + 1] { j += 1; }
            while k < l && nums[k] == nums[k + 1] { k += 1; }
            k += 1;
            while l > k && nums[l] == nums[l - 1] { l -= 1; }
            l -= 1;
          } else if sum4 < target {
            k += 1;
          } else {
            l -= 1;
          }
        }
        j += 1;
      }
      i += 1;
    }
    
    return result;
  }
}

fn main() {
  let result = Solution::four_sum(vec![1,0,-1,0,-2,2], 0);
  println!("{} {:?}", result == [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]], result);
  
  let result = Solution::four_sum(vec![2,2,2,2,2], 8);
  println!("{} {:?}", result == [[2,2,2,2]], result);
  
  let result = Solution::four_sum(vec![-2,-2,-2,-2,-2], -8);
  println!("{} {:?}", result == [[-2,-2,-2,-2]], result);
  
  let result = Solution::four_sum(vec![-1,0,1,2,-1,-4], -1);
  println!("{} {:?}", result == [[-4,0,1,2],[-1,-1,0,1]], result);
}
