
CLOUD cloud16 = new CLOUD(-5, 350, 4000, 2);
THWOMP t8 = new THWOMP(500, 100, 275);
THWOMP t9 = new THWOMP(800, 100, 275);
THWOMP t10 = new THWOMP(1100, 100, 275);
THWOMP t11 = new THWOMP(1400, 100, 275);
life HEART3 = new life(1600, 330);
PORTAL portal4 = new PORTAL(1850, 350, 6);

void daycare() {
  background(#0DDDFF);
  FOUND(2000-cameraX, 275);
  jump = 1;
  if (pause==0) {
    movement();
  }  
  if (time <=0 || gy>450) {
    time=0;
    lifeVAR=0;
  }
  bordersAndCamera();
  cloud16.update();
  t8.update();
  t9.update();
  t10.update();
  t11.update();
  portal4.update();
  HEART3.update();
  if (lifeVAR <=11) {
    lose();
  }
  if (lifeVAR > 11) {
    if (cSelect == 0)
      harryDraw();
    else
      oliviaDraw();
  }  
}