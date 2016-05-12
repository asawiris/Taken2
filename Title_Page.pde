
int chooseX=300, chooseY=249;
float cloudX=125;




void titlePage() {

  image(TITLE, 300, 200);
  
  cloud(cloudX-100, 40);
  cloud(cloudX+175, 95 );
  cloud(cloudX+450, 70);
  cloudX+=.5;
  if (cloudX>width+200){
    cloudX=-300;
  }

  
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