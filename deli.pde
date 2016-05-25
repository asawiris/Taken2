CLOUD C10 = new CLOUD(-1000, 350, 6000, 2);

PORTAL p2 = new PORTAL(25, 350, 1);

PORTAL p3= new PORTAL(375, 350, 4);

PHONE PH2 = new PHONE(phoneX, phoneY);

void deli() {

  background(#FFFFFF);

  fill(#000000);

  if (endStory==1) {
    p3.update();
  }
  
  fill(0);
  rect(17, 268, 65, 91);
  fill(#1C5EFF);
  rect(22, 273, 55, 91);
  fill(0);
  
  
  rect(22, 228, 56, 31);
  fill(255);
  rect(25, 231, 50, 25);
  fill(#ff0000);
  textFont(font, 12);
  text("EXIT", 27.5, 250);

  image(TABLE, storyX+240, storyY-39, 100, 100);
  image(CHAIR, storyX+185, storyY-49, 100, 100);
  if (cSelect==1) {
    image(HLEFT, storyX+300, storyY-24, 75, 75);
  }
  if (cSelect==0) {
    image(OLEFT, storyX+300, storyY-24, 75, 75);
  }

  if (cSelect == 0)
    harryDraw();
  else
    oliviaDraw();

  if (pause==0) {
    movement();
  }

  jump = 1;

  C10.update();
  p2.update();
  PH2.update();

  bordersAndCamera();
}