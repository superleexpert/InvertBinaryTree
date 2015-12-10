//
//  ViewController.swift
//  InvertBinaryTree
//
//  Created by Lee on 12/10/15.
//  Copyright © 2015 Lee. All rights reserved.
//

import UIKit

class TreeNode : NSObject {
    
    var val: Int?
    var left: TreeNode?
    var right: TreeNode?
    
    init(val aVal: Int?, left aLeft: TreeNode?, right aRight: TreeNode?) {
        val = aVal
        left = aLeft
        right = aRight
    }
}

class ViewController: UIViewController {
    
    func invertBT(tree: TreeNode) -> TreeNode
    {
        let l = tree.left
        let r = tree.right
        tree.left = r
        tree.right = l
        if (tree.left != nil) {
            tree.left = invertBT(r!)
        }
        if (tree.right != nil) {
            tree.right = invertBT(l!)
        }
        return tree
    }
    
    func invertBinaryTree(root: TreeNode?) -> TreeNode
    {
        /*
        if (root != nil) {
        let temp: TreeNode = root!.left!
        root!.left = root!.right
        root!.right = temp
        invertBinaryTree(root!.left)
        invertBinaryTree(root!.right)
        }
        */
        
        if (root != nil) {
            (root!.right, root!.left) = (invertBinaryTree(root!.left), invertBinaryTree(root!.right))
        }
        return root!
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

