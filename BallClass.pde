// global variables
  Ball b1;
  Ball b2;
  Ball b3;
  
// setup method
public void setup()
{
  size(800, 800);
  background(120);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball(8, 8, 50);
}

//draw method
public void draw()
{
  background(120);
  b1.update();
  b1.drawBall();
  b1.checkEdges();
  
  b2.update();
  b2.drawBall();
  b2.checkEdges();
  
  b3.update();
  b3.drawBall();
  b3.checkEdges();
}

public class Ball
{
  // Instance Variables
  private int x;
  private int y;
  
  private int xD;
  private int yD;
  
  private int diameter;
  
  // Assume size(800, 800);
  // Constructors
  public Ball()
  {
    x = (int)(Math.random()*width);
    y = (int)(Math.random()*height);
    xD = 5;
    yD = 5;
    diameter = (int)(Math.random()*50 + 10);
  }
  
  public Ball(int xD, int yD, int diameter)
  {
    this.xD = xD;
    this.yD = yD;
    this.diameter = diameter;
  }
  
  // Methods
  public void update()
  {
    x += xD;
    y += yD;
  }
  
  public void drawBall()
  {
    ellipse(x, y, diameter, diameter);
  }
  
  public void checkEdges()
  {
    if(x > width || x < 0)
      xD *= -1;
    if(y > height || y < 0)
      yD *= -1;
  }
}
