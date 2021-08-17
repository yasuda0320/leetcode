# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

def dfs(max, node)
  count = 0
  if node.val >= max
    count = 1
    max = node.val
  end
  count += dfs(max, node.left) if node.left
  count += dfs(max, node.right) if node.right
  count
end

# @param {TreeNode} root
# @return {Integer}
def good_nodes(root)
  dfs(-10001, root)
end
