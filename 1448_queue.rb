# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @return {Integer}
def good_nodes(root)
  count = 0
  pairs = []
  pairs.push([root, root.val])
  
  until pairs.empty?
    node = pairs.last.first
    max_val = pairs.last.last
    
    if !node.left && !node.right
      pairs.pop
      count += 1 if node.val >= max_val
    elsif node.left
      pairs.push([node.left, max_val >= node.val ? max_val : node.val])
      node.left = nil
    elsif node.right
      pairs.push([node.right, max_val >= node.val ? max_val : node.val])
      node.right = nil
    end
  end
  count
end

root = TreeNode.new(3, TreeNode.new(1, TreeNode.new(3)), TreeNode.new(4, TreeNode.new(1), TreeNode.new(5)))
p good_nodes(root)
