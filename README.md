# 翻转2fukTree
Invert Binary Tree By Swift

-----我是分界线-----

traversal

中序二叉树遍历

    //递归中序遍历二叉树
    void InOrder1(BinTree *root)
    {
        if(root != NULL)
        {
           InOrder1(root->lchild);
           printf("%c",root->data);
           InOrder1(root->rchild);
        }
    }

---------------------------------------------

    //非递归中序遍历二叉树 --- 用栈实现
    void InOrder2(BinTree *root)
    {
        stack<BinTree *> s;
        while(root != NULL || !s.empty())
        {
           if(root != NULL)
           {
              s.push(root);
              root = root->lchild;
            }
            else
            {
              root = s.pop();
              printf("%c",root->data);
              root = root->rchild;
            }
        }
    }

