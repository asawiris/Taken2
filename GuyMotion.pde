float gx, gy, gvy;
int goRight, goLeft, jump;
int speed = 6;

void movement() { 
  if (goRight == 1 ) {
    gx += speed;
  }
  if (goLeft == 1 ) {
    gx -= speed;
  }
  gvy+=1;
  gy+=gvy;
}