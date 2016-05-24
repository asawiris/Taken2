//guymotion
float gx, gy, gvy;
int goRight, goLeft, jump;



float dt = 1;



void movement() {
  
  dt = 60.0/frameRate;
  //DO ALL COLLISIONS WITH THIS RECTANGLE
  //fill(#FFFFFF);
  //rect(gx-17 - cameraX,gy-55,30,55);

  if (goRight == 1 ) {
    gx += 6;
  }
  if (goLeft == 1 ) {
    gx -= 6;
  }
  gvy+=1;
  gy+=gvy;
}