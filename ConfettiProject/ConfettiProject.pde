// Confetti 
// Built on code from The Coding Train / Daniel Shiffman
// Una Roberts, 3/14/25

Confetti[] confetti = new Confetti[100];

boolean partyTime = false;


void setup()
{
  size (640, 360);
  
  for (int i = 0; i< confetti.length; i++)
  {
    confetti[i] = new Confetti();
  }
  
}


void mousePressed()
{
partyTime = true;
for (Confetti c: confetti )
{
  c.burst(mouseX, mouseY);
}
}


void draw()
{
background(255);

if(partyTime){
for (Confetti c: confetti )
  {
    c.update();
    c.show();
  }
}
}
