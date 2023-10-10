int sum = 0;    

void setup()
  {
      noLoop();
      size(400,400);
  }
  void draw(){  
    background(255, 255, 255);
    for(int i = 10; i<=350; i+=50){
         for(int p = 10 ; p <= 350 ; p+=50){
           Die bob = new Die(i, p);
           bob.roll();
           bob.show();
           sum += bob.getPips();
         }
      }
      textSize(25);
      
      text ("number of pips is: " + sum, 50, 380);
      sum=0;
       
         
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      int pips;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY=y;
      }
      void roll()
      {
        pips=(int)(Math.random()*6+1);
        
            
            
      }
      private int getPips(){
        return pips;
    
      }
      void show()
      {
          rect(myX,myY, 30,30);
          if(pips == 1){
            ellipse(myX+15, myY+15, 4, 4); 
          }else if(pips == 2){
            ellipse(myX+10, myY+25, 4, 4); 
            ellipse(myX+20, myY+5, 4, 4);
          }else if(pips == 3){
            ellipse(myX+5, myY+5, 4, 4); 
            ellipse(myX+15, myY+15, 4, 4); 
            ellipse(myX+25, myY+25, 4, 4);
          }else if(pips == 4){
            ellipse(myX+5, myY+25, 4, 4); 
            ellipse(myX+5, myY+5, 4, 4); 
            ellipse(myX+25, myY+25, 4, 4); 
            ellipse(myX+25, myY+5, 4, 4); 
          }else if(pips == 5){
            ellipse(myX+5, myY+25, 4, 4);
            ellipse(myX+5, myY+5, 4, 4);
            ellipse(myX+25, myY+25, 4, 4); 
            ellipse(myX+25, myY+5, 4, 4);
            ellipse(myX+15, myY+15, 4, 4);
          }else if(pips==6){
            ellipse(myX+5, myY+5, 4, 4); 
            ellipse(myX+5, myY+15, 4, 4);
            ellipse(myX+5, myY+25, 4, 4); 
            ellipse(myX+25, myY+5, 4, 4);
            ellipse(myX+25, myY+15, 4, 4); 
            ellipse(myX+25, myY+25, 4, 4); 
          }
            
      }
  }
  

  
  
