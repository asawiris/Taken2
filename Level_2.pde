//level2
CLOUD c4 = new CLOUD(0, 350, 400, 2);
CLOUD c7 = new CLOUD(500, 350, 1000, 2);
life HEART2 = new life(1500, 330);
prana pr4 = new prana(435-cameraX, 100, 275);
THWOMP t4 = new THWOMP(800-cameraX, 100, 275);
THWOMP t5 = new THWOMP(1130-cameraX, 100, 275);
CLOUD cloud10 = new CLOUD(1630, 320, 200, 1);
CLOUD cloud11 = new CLOUD(1930, 280, 150, 1);
CLOUD cloud12 = new CLOUD(2220, 240, 100, 1);
CLOUD cloud13 = new CLOUD(2420, 200, 50, 1);
CLOUD cloud14 = new CLOUD(2560, 200, 25, 1);
CLOUD cloud15 = new CLOUD(2700, 350, 1000, 2);
PORTAL portal3 = new PORTAL(3220, 350, 5);

void map2() {
  background(#9D74EA);
  cloudPICTURE(100-.6*cameraX, 1);
  cloudPICTURE(350-.6*cameraX, 50);
  cloudPICTURE(600-.6*cameraX, 100 );
  cloudPICTURE(850-.6*cameraX, 75);
  cloudPICTURE(1100-.6*cameraX, 50 );
  cloudPICTURE(1350-.6*cameraX, 100);
  cloudPICTURE(1600-.6*cameraX, 75 );
  cloudPICTURE(1850-.6*cameraX, 50);
  cloudPICTURE(2100-.6*cameraX, 100 );
  cloudPICTURE(2350-.6*cameraX, 75);
  cloudPICTURE(2600-.6*cameraX, 50 );
  daycare(3250-cameraX, 190);
  if (lifeVAR<1) {
    lose();
  }
  if (lifeVAR> 0) {
    if (cSelect == 0)
      harryDraw();
    else
      oliviaDraw();
  }
  if (pause==0) {
    movement();
  }
  if (time <=0 || gy>450) {
    time=0;
    lifeVAR=0;
  }
  bordersAndCamera();
  jump = 1;
  c4.update();
  c7.update();
  t4.update();
  t5.update();
  pr4.update();
  portal3.update();
  cloud10.update();
  cloud11.update();
  cloud12.update();
  cloud13.update();
  cloud14.update();
  cloud15.update();
  HEART2.update();
  if (gy>450) {
    lose();
  }
  ReplayAnimation();
}