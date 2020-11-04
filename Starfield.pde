class Particle
{
  double myAngle, mySpeed;
  int myX, myY, myColor, Color, mySize;
  Particle(){
    myX = 0;
    myY = 0;
    myAngle = Math.random()*2*PI;
    mySize = 20;
    mySpeed = Math.random()*5;
    myColor = color((int)((Math.random())*255), (int)((Math.random())*255), (int)((Math.random())*255));
  }
  void move(){
    myX += (Math.cos((float)myAngle)*mySpeed);
    myY += (Math.sin((float)myAngle)*mySpeed);
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}

class OddballParticle extends Particle
{
  void odd(){
    myColor = color(255);
    mySize = 20;
    myX += (int)(Math.random()*25)-12;
    myY += (int)(Math.random()*25)-12;
  }
}

Particle [] spec;
OddballParticle dot;

void setup()
{
  size(400,400);
  background(0, 0 ,0);
  spec = new Particle[10000];
  for(int i = 0; i < spec.length;i++){
    spec[i] = new Particle();
  }
  dot = new OddballParticle();
}

void draw()
{
  translate(200,200);
  background(0);
  for(int j = 0; j < spec.length; j++){
    spec[j].show();
    spec[j].move();
  }
  dot.show();
  dot.odd();
}
