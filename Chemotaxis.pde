//declare bacteria variables here   
Bacteria [] bob;
void setup()   
{     
  //initialize bacteria variables here  
  size(600, 600);
  bob = new Bacteria[500];
  for (int i = 0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}   
void draw()   
{
    background(170,170,170);
  //move and show the bacteria
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
  }
}  
class Bacteria    
{     
  //lots of java!
  int x, y;
  Bacteria()
  {
    x = 300;
    y = 300;

  }
  void show()
  {
    fill((int)(Math.random() * 300),(int)(Math.random() * 200),(int)(Math.random() * 200));
    ellipse(x, y, 10, 10);
    x = x + (int)(Math.random() * 6 - 3);
    y = y + (int)(Math.random() * 6 - 3);
  }
}    