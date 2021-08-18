/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number}
 */
function goodNodes(root) {
  let count = 0;
  let pairs = [];
  pairs.push([root, root.val])
  
  while (pairs.length) {
    let next = pairs[pairs.length - 1];
    let node = next[0];
    let max_val = next[1];
    
    if (node.left === null && node.right === null) {
      pairs.pop();
      if (node.val >= max_val)
        count++;
    } else if (node.left !== null) {
      pairs.push([node.left, max_val >= node.val ? max_val : node.val]);
      node.left = null;
    } else if (node.right !== null) {
      pairs.push([node.right, max_val >= node.val ? max_val : node.val]);
      node.right = null;
    }
  }
  return count;
};
