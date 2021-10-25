Bubble[] bubs = new Bubble[20];
void setup()
{
  size(400, 400);
  for(int i = 0; i<bubs.length; i++){
    bubs[i] = new Bubble();
  }
}

class Bubble 
{
  int myX, mySize, myColor;
  float myY, mySpeed;
  
  Bubble()
  {
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    mySize = (int)(Math.random()*20)+10;
    myX = (int)(Math.random()*400);
    myY = 400.0;
    mySpeed = mySize/10;
  }
  void rise()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-5 - mySpeed;
    if(myY <= 0){
      myY = 400.0 - (int)(Math.random()*20);
    }
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  
  
}

void draw(){
  background(50, 50, 50, 10);
 for(int i = 0; i<bubs.length; i++){
   bubs[i].rise();
   bubs[i].show();
 }
}
