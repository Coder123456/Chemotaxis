 

Bacteria[] colony = new Bacteria[100];

Bacteria[] blob = new Bacteria[2];
void setup()   
{     
  size(600, 600);
  for (int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria(i);
  }
}   
void draw()   
{    
  background(240,230,140); 

  

  for (int i=0; i< colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}  
class Bacteria    
{     
  int movr;
  int colors;
  int mx, my;
  Bacteria(int patrn) //constructor
  {
    movr = patrn;
    colors = 130;
    mx = (int)(Math.random()*550)+30;
    my = (int)(Math.random()*550)+30;
  }
  
  void move()
  {
    if((movr % 2) == 0)
    {
    if ((600>mx)&&(mx>0))
    {
      if (my < mouseX)
      {
        mx = mx + (int)(Math.random()*11)-10;
      } else
      {
        mx = mx + (int)(Math.random()*11);
      }
    }
    else
    {
     mx = ((int)(Math.random()*3)- 2) + mouseY;
    }
    if ((600>my)&&(my>0))
    {
      if (mx > mouseY)
      {
        my = my + (int)(Math.random()*11)-9;
      } 
      else
      {
        my = my + (int)(Math.random()*11);
      }
    }
    else
    {
    my = ((int)(Math.random()*3)-1) + mouseX;
    }
    }
    else
    {
      if ((600>mx)&&(mx>0))
    {
      if (my > mouseX)
      {
        mx = mx + (int)(Math.random()*11)-10;
      } else
      {
        mx = mx + (int)(Math.random()*11);
      }
    }
    else
    {
     mx = ((int)(Math.random()*3)- 2) + mouseY;
    }
    if ((600>my)&&(my>0))
    {
      if (mx < mouseY)
      {
        my = my + (int)(Math.random()*11)-9;
      } 
      else
      {
        my = my + (int)(Math.random()*11);
      }
    }
    else
    {
    my = ((int)(Math.random()*3)-1) + mouseX;
    }
    }
  }

  void show()
  {
    if((movr % 2) == 0)
    {
    fill(190,250,190);
    }
    else
    {
      fill(250,20,20);
    }
    rect(my, mx, 10, 10, 0, 140, 0, 140);
  }
}
