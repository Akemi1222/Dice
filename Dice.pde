Die die;
int sum=0;
int cumulative=0;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  background(120);
  for (int y=0;y<5;y++){
    for (int x=0;x<5;x++){
      die=new Die(x*90+30,y*90+20);
      die.show();
      sum+=die.roll;
      cumulative+=die.roll;
    }
  }
  textAlign(CENTER);
  fill(255,255,255,sum*4-200); 
  textSize(150);
  text(sum,250,290);
  fill(0);
  textSize(16);
  text("Cumulative: "+cumulative,250,485);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die //models one single dice cube
{
  //variable declarations here
  int mySize,myX,myY,roll;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    mySize=80;
    myX=x;
    myY=y;
    roll=(int)(Math.random()*6+1);
  }
  void show()
  {
    //your code here
    fill(0);
    rect(myX,myY,mySize,mySize,16,16,16,16);
    fill((int)(Math.random()*255),(int)(Math.random()*255),0);
    if (roll==1){
      circle(myX+40,myY+40,14);
    } else if (roll==2){
      ellipse(myX+20,myY+40,14,14);
      ellipse(myX+60,myY+40,14,14);
    } else if (roll==3){
      ellipse(myX+40,myY+20,14,14);
      ellipse(myX+20,myY+54,14,14);
      ellipse(myX+60,myY+54,14,14);
    } else if (roll==4){
      ellipse(myX+20,myY+20,14,14);
      ellipse(myX+60,myY+20,14,14);
      ellipse(myX+20,myY+60,14,14);
      ellipse(myX+60,myY+60,14,14);
    } else if (roll==5){
      ellipse(myX+40,myY+40,14,14);
      ellipse(myX+20,myY+20,14,14);
      ellipse(myX+60,myY+20,14,14);
      ellipse(myX+20,myY+60,14,14);
      ellipse(myX+60,myY+60,14,14);
    } else {
      ellipse(myX+26,myY+14,14,14);
      ellipse(myX+26,myY+38,14,14);
      ellipse(myX+26,myY+62,14,14);
      ellipse(myX+56,myY+14,14,14);
      ellipse(myX+56,myY+38,14,14);
      ellipse(myX+56,myY+62,14,14);
    }
  }
}
