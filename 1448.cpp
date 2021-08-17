/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
  int goodNodes(TreeNode* node, int max = -10000) {
    int count = 0;
    if (node->val >= max) {
      count++;
      max = node->val;
    }
    if (node->left)
      count += goodNodes(node->left, max);
    if (node->right)
      count += goodNodes(node->right, max);
    return count;
  }
};
