//guymotion
float gx, gy, gvy;
int goRight, goLeft, jump;

void movement() { 
  //DO ALL COLLISIONS WITH THIS RECTANGLE
  //fill(#FFFFFF);
  //rect(gx-17 - cameraX,gy-55,30,55);
  if (goRight == 1 ) {
    gx += 20;
  }
  if (goLeft == 1 ) {
    gx -= 6;
  }
  gvy+=1;
  gy+=gvy;
}