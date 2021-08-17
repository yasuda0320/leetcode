# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} node
# @return {Integer}
def good_nodes(node, max = -10001)
  count = 0
  if node.val >= max
    count = 1
    max = node.val
  end
  count += good_nodes(node.left, max) if node.left
  count += good_nodes(node.right, max) if node.right
  count
end
