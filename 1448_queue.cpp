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
  int goodNodes(TreeNode* root) {
    int count = 0;
    queue<pair<TreeNode*, int>> pairs;
    pairs.push({root, root->val});
    
    while (!pairs.empty()) {
      auto next = pairs.front();
      TreeNode* node = next.first;
      int max_val = next.second;
      
      if (node->left == nullptr && node->right == nullptr) {
        pairs.pop();
        if (node->val >= max_val)
          count++;
      } else if (node->left != nullptr) {
        pairs.push({node->left, max(max_val, node->val)});
        node->left = nullptr;
      } else if (node->right != nullptr) {
        pairs.push({node->right, max(max_val, node->val)});
        node->right = nullptr;
      }
    }
    return count;
  }
};
