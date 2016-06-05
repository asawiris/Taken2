CLOUD storeCloud = new CLOUD(-1000, 350, 6000, 2);
PORTAL buyPortal = new PORTAL(350, 350, 8);
PORTAL leavePortal = new PORTAL(25, 350, 1);

void store() {

  background(#CE02CB);
fill(0);
  rect(17, 270, 65, 81);
  fill(#5ecdff);
  rect(22, 275, 55, 75);
  fill(0);
  rect(22, 230, 56, 31);
  fill(255);
  rect(25, 233.5, 50, 25);
  fill(#ff0000);
  textFont(font, 12);
  text("EXIT", 27.5, 253);
  image(cashierImage, 550, 305);
  fill(0);
  rect(425, 315, 210, 110, 12, 12, 12, 12);
  fill(#814900);
  rect(430, 320, 200, 100, 12, 12, 12, 12);
  textSize(15);
  fill(0);
  text("Cashier", 467, 345);
  fill(255);
  text("Cashier", 465, 343);


  if (cSelect == 0)
    harryDraw();
  else
    oliviaDraw();
  if (pause==0) {
    movement();
  }
  jump = 1;
  storeCloud.update();
  buyPortal.update();
  leavePortal.update();
  if (gx<0) {
    gx=0;
  }
  if (gx>width) {
    gx=width;
  }
  bordersAndCamera();
}