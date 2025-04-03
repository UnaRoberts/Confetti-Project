class Confetti
{
    float x, y;
    float xspeed, yspeed;
    color col = color(random(0, 255), random(0, 255), random(0, 255), random(0,255));
    Confetti() 
     { 
        x= -1000;
        y = -1000;
        xspeed = 0;
        yspeed = 0;
      }
    
    void burst(float mx, float my)
      {
        x= mx;
        y= my;
        xspeed = random(-5, 5);
         yspeed = random(-5, 5);
       }
    
    
    void update()
      {
        x = x+ xspeed;
        y = y+ yspeed;
        yspeed = yspeed + 0.1;
      }
    
    void show()
      {
        fill(col);
        noStroke();
        rectMode(CENTER);
        circle(x, y, 10);
      }
}
  
 
