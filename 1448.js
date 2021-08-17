/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} node
 * @return {number}
 */
function goodNodes(node, max = -10000) {
  let count = 0;
  if (node.val >= max) {
    count++;
    max = node.val;
  }
  if (node.left)
    count += goodNodes(node.left, max);
  if (node.right)
    count += goodNodes(node.right, max);
  return count;
}
