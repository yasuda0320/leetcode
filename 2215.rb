# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
  nums1.uniq!
  nums2.uniq!
  [nums1.difference(nums2), nums2.difference(nums1)]
end
