float gx, gy, gvy;
int goRight, goLeft, jump;

void movement() { 
  if (goRight == 1 ) {
    gx += 6;
  }
  if (goLeft == 1 ) {
    gx -= 6;
  }
  gvy+=1;
  gy+=gvy;
}