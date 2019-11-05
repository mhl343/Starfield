HarryPotter[]parts= new HarryPotter[1000];
Voldemort[]part= new Voldemort[1000];

void setup() {
  size (1200, 800);
  for (int i=0; i<parts.length; i++) {
    parts[i]= new HarryPotter();
  }
  for (int i=0; i<=30; i++) {
    parts[i]=new OddBallHarryPotter();
  }

  for (int i=0; i<part.length; i++) {
    part[i]= new Voldemort();
  }
  for (int i=0; i<=30; i++) {
    part[i]=new OddBallVoldemort();
  }
}

void draw() {
  background (72, 68, 69);
  fill (0);
  rect (-50,400,200,10,5,5,5,5);
  rect (1050,400,200,10,5,5,5,5);
  fill(255);
  rect (125,400,25,10,5,5,5,5);
  rect (1050,400,25,10,5,5,5,5);


  for (int i=0; i<parts.length; i++) {
    parts[i].move();
    parts[i].show();
  }

  for (int i=0; i<part.length; i++) {
    part[i].move();
    part[i].show();
  }
}

class HarryPotter {
  double myX, myY, mySpeed, myAngle;
  int myColor;
  HarryPotter() {
    myX=250;
    myY=400;
    myAngle= Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color((int)(Math.random()*155+100), 0, 0);
  }
  void move() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  void show() {
    fill (myColor);
    ellipse ((float)myX, (float)myY, 8, 8);
  }
}
class OddBallHarryPotter extends HarryPotter {
  double myX, myY, mySpeed, myAngle;
  OddBallHarryPotter() {
    myX=250;
    myY=400;
    myAngle=Math.random()*2*PI;
    mySpeed=Math.random()*10;
  }
  void move() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  void show() {
    textSize(32);
    fill(myColor);
    text("Expelliarmus", (float)myX, (float)myY); 
   
  }
} 


class Voldemort {
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Voldemort() {
    myX=930;
    myY=400;
    myAngle= Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color(0, (int)(Math.random()*155+100), 0);
  }
  void move() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  void show() {
    fill (myColor);
    ellipse ((float)myX, (float)myY, 8, 8);
  }
}
class OddBallVoldemort extends Voldemort {
  double myX, myY, mySpeed, myAngle;
  OddBallVoldemort() {
    myX=930;
    myY=400;
    myAngle=Math.random()*2*PI;
    mySpeed=Math.random()*10;
  }
  void move() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  void show() {
    textSize(32);
    fill(myColor);
    text("Avada Kedavra", (float)myX, (float)myY); 
    
  }
}