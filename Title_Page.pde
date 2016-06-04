int chooseX=300, chooseY=249;
float cloudX=125;

void titlePage() {
  image(TITLE, 300, 200);
  cloudPICTURE(cloudX-100, 40);
  cloudPICTURE(cloudX+175, 95 );
  cloudPICTURE(cloudX+450, 70);
  cloudX+=.5;
  if (cloudX>width+200) {
    cloudX=-300;
  }
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