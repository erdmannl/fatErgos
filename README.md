# fatErgos

For my final project in Advanced Computer Science, I decided to illustrate a piecce of rowing culture in a tree diagram. 

Fat Ergos was born out of a winter erging season on the Wisonsin rowing team. To get through the awful sessions, two rowers began making memes about loving to erg. Since then, Fat Ergos has grown into a buisness with tens of thousands of Instagram followers, merchandise, and a united community behind it. This project was designed to weed out the skinny ergos from the true fat ergos. 

Personal Log
Week of May 13th: During this week I focused on getting my tree labs done and understanding what I was doing when going through the tree. I also made my plan for the final project and tried to decide on a plan.

Week of May 20th: This week I began to code the final project. The main piece of code that I had to work out was making the tree. At first, I made each prompt and answer their own individual nodes which I later found out was difficult to manage when trying to put all of them on an intereface. I wrote the keyPressed class this week as well, which took a while to work out due to weird jumps in the tree.

Week of May 27th: This week was a grind. I had thought that the only thing I had left was making the interface to tie it all together, but turns out I had to remake my tree and tweak my keyPressed to actually go in order. I made a lot of copies of the project in processing, making slight adjustments to each one and seeing what worked. In the end, it was really a great week though. I was able to sort out the problems and make it work, which I was not expecting. 

Difficulties in the Process
  There were definetly a lot of problems I ran into with this project. From figuring out the best place to load images, how to go through the tree in order, and how to make the keyPressed actually work, I had a lot of opportunities to dig into my code and problem solve. I think that this project is the best example of me working through things on my own and putting a lot of time into it, which I am really proud of. 
  
The hardest part was tracking down where the problems in the code were, and how to break it down into manageable pieces that I could fix. 

I think the most interesting piece of code is the boolean changes in the keyPressed method which connects with the calls to the scene class in the draw. I have never worked with scenes before and it was really hard for me to wrap my head, but once I had a grip on it I really enjoyed it. 

'''Java
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
  '''
  
  ##Built with
  * Processing (https://processing.org/) - the IDE used
  
  ##Authors
  * Lara Erdmann
  
  ##Acknowledgements
  * Fat Ergos
  * Dr. R for helping me understand how to make it all happen
