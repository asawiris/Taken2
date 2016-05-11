
int chooseX=300, chooseY=249;






void titlePage() {

  image(TITLE, 300, 200);
  //fill(#FF0000);
  //ellipse(startX, startY, 50, 50);
  goRight = 1;
  gy = 400;
  gx+=2.5;
  if (gx > width + 200) {
    gx = -100;
  }
  characterAnimation();
  harryDraw();
  gx +=80;
  oliviaDraw();
  gx -=80;
}