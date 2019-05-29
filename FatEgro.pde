
String s= "";
BST tree=new BST();
TreeNode current;
resultScene sc;
PImage p,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11;

boolean zero=false;
boolean one=false;
boolean two=false;
boolean three=false;
boolean four =false;
boolean five =false;
boolean six =false;
boolean seven =false;
boolean eight =false;
boolean nine =false;
boolean ten =false;
boolean eleven =false;

void setup(){
  size(800,500);
  
  current=tree.buildTree(); 
  s=(String)current.getValue();
  sc = new resultScene();
  p = loadImage("zero.png");
  p1 = loadImage("one.png");
  p2 = loadImage("two.png");
  p3= loadImage("three.png");
  p4 = loadImage("four.png");
  p5 = loadImage("five.png");
  p6 = loadImage("six.png");
  p7 = loadImage("seven.png");
  p8 = loadImage("eight.png");
  p9 = loadImage("nine.png");
  p10 = loadImage("ten.png");
  p11 = loadImage("eleven.png");
}

void draw(){
  background(255);
  textSize(20);
  fill(0);
  rect(0,0,800,40);
  fill(255);
  text("Are You A Fat Ergo?",600,30);
 
  
  fill(0);
  text(s, 300, height/2);
  
  if(zero==true){
    sc.RS0();  
  }
  
  else if(one==true){
    sc.RS1();
  }
  
  else if(two==true){
    sc.RS2();
  }
  
  if(three==true){
    sc.RS3();
  }
  
  if(four==true){
    sc.RS4();
  }
  
  if(five==true){
    sc.RS5();
  }
  
  if(six==true){
    sc.RS6();
  }
  
  if(seven==true){
    sc.RS7();
  }
  
  if(eight==true){
    sc.RS8();
  }
  
  if(nine==true){
    sc.RS9();
  }
  
  if(ten==true){
    sc.RS10();
  }
  
  if(eleven==true){
    sc.RS11();
    
  }  
}


void keyPressed(){
  if(keyCode==LEFT){
    s = (String)current.getLeft().getValue();
    System.out.println(s);
    
    if(s.equals("Nah bro, not even close")){
       two=true;
       zero=false;  
     }else if(s.equals("That ain't it")){
       four=true;
       zero=false;
     }else if(s.equals("Disappointed")){
       six=true;
       zero=false;
     }else if(s.equals("That is a false statement")){
       eight=true;
       zero=false;
     }else if(s.equals("Bro, what? No")){
       ten=true;
       zero=false;
     }
     current= current.getLeft();
  }
  else if(keyCode == RIGHT){
    s = (String)current.getRight().getValue();
    System.out.println(s);
    
    
    if(s.equals("What's Your 2k? \n(left)Not sub 7/8  \n(right)Sub 7/8")){
      one=true;
      zero=false;
    }
    else if(s.equals("Post PR meal? \n(left)Protein Shake \n(right)McDanks")){
      three=true;
      zero=false;
    }
    else if(s.equals("Choose a workout: \n(left)Stroking the 1V \n(right)Hour of Power")){
      five=true;
      zero=false;
    }
    else if(s.equals("Which is true? \n(left)Ergs don't float \n(right)Boats don't float")){
      seven=true;
      zero=false;
    }
    else if(s.equals("Would you rather: (left)Have a social life (right)spend the rest of your life in the erg room")){
      nine=true;
      zero=false;
    }
    else if(s.equals(":,) you're in")){
      eleven=true;
      zero=false;
    }
    
    current= current.getRight();
    
  }
  
  
  
  
}

public interface Treeable
{
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
