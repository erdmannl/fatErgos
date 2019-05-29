class BST{
  TreeNode root;
  TreeNode current;
  
  public BST(){
    root = null;
  }
  
  TreeNode buildTree(){
    root = new TreeNode("What's Your 2k? \n(left)Not sub 7/8  \n(right)Sub 7/8");
    //level one
    
    root.setLeft(new TreeNode("Nah bro, not even close"));
    root.setRight(new TreeNode("Post PR meal? \n(left)Protein Shake \n(right)McDanks"));
    //level three
    
    root.getRight().setLeft(new TreeNode("That ain't it"));
    root.getRight().setRight(new TreeNode("Choose a workout: \n(left)Stroking the 1V \n(right)Hour of Power"));
    //level four
    
    root.getRight().getRight().setLeft(new TreeNode("Disappointed"));
    root.getRight().getRight().setRight(new TreeNode("Which is true? \n(left)Ergs don't float \n(right)Boats don't float"));
    //level five
    
    root.getRight().getRight().getRight().setLeft(new TreeNode("That is a false statement"));
    root.getRight().getRight().getRight().setRight(new TreeNode("Which is true? \n(left)Ergs don't float \n(right)Boats don't float"));
    //level six
    
    root.getRight().getRight().getRight().getRight().setLeft(new TreeNode("Bro, what? No"));
    root.getRight().getRight().getRight().getRight().setRight(new TreeNode(":,) you're in"));
    //level seven
    
    
    current=root;
    return current;
    
}

TreeNode tn(){
  return current;
}
  
  
}
