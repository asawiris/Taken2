//guymotion
float gx, gy, gvy;
int goRight, goLeft, jump;

void movement() {
  //DO ALL COLLISIONS WITH THIS RECTANGLE
  rect(gx-17- cameraX,gy-55,30,55);

  if (goRight == 1 ) {
    gx += 5;
  }
  if (goLeft == 1 ) {
    gx-=5;
  }
  gvy+=1;
  gy+=gvy;
}