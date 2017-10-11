Particle[] particles;
void setup()
{
  size(1000,1000);
  particles = new Particle[42];
  for (int i=0; i<particles.length; i++)
  {
    particles[i] = new NormalParticle();
  }
  particles[40] = new OddballParticle();
  particles[41] = new JumboParticle();
}
void draw()
{
  background(0);
  for (int i=0; i<particles.length; i++)
  {
    particles[i].show();
    particles[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  int color1, color2, color3;
  NormalParticle()
  {
    myX = 500;
    myY = 500;
    mySpeed = Math.random()*11+1;
    myAngle = Math.random()*2*Math.PI;
    color1 = (int)(Math.random()*256);
    color2 = (int)(Math.random()*256);
    color3 = (int)(Math.random()*256);
  }
  
  public void move()
  {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  
  public void show()
  {
    fill(color1,color2,color3);
    ellipse((float)myX,(float)myY,100,100);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  int color1, color2, color3;
  OddballParticle()
  {
    myX = -50;
    myY = 900;
    mySpeed = 50;
    color1 = (int)(Math.random()*256);
    color2 = (int)(Math.random()*256);
    color3 = (int)(Math.random()*256);
  }
  
  public void move()
  {
    myX += 10;
  }
  
  public void show()
  {
    fill(color1,color2,color3);
    ellipse((float)myX,(float)myY,100,100);
  }
}
class JumboParticle implements Particle
{
    double myX, myY, mySpeed, myAngle;
  int color1, color2, color3;
  JumboParticle()
  {
    myX = 500;
    myY = 500;
    mySpeed = Math.random()*11+1;
    myAngle = Math.random()*2*Math.PI;
    color1 = (int)(Math.random()*256);
    color2 = (int)(Math.random()*256);
    color3 = (int)(Math.random()*256);
  }
  
  public void move()
  {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  
  public void show()
  {
    fill(color1,color2,color3);
    ellipse((float)myX,(float)myY,200,200);
  }
}