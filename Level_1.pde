//level1

//int alpha2=255;
//int alpha3=0;
CLOUD c1 = new CLOUD(000, 350, 4000, 2);

PORTAL p1 = new PORTAL(163, 350, 2);



void map1() {
  background(#2AC0F5);  
  scenery();
  tree(300-.5*cameraX, 270);
  cloud(100-.6*cameraX, C1Y);
  cloud(350-.6*cameraX, 50);
  cloud(600-.6*cameraX, 100 );
  cloud(850-.6*cameraX, 75);
  cloud(1100-.6*cameraX, 50 );
  cloud(1350-.6*cameraX, 100);
  cloud(1600-.6*cameraX, 75 );
  cloud(1850-.6*cameraX, 50);
  cloud(2100-.6*cameraX, 100 );
  cloud(2350-.6*cameraX, 75);
  cloud(2600-.6*cameraX, 50 );
  buildingRED(600-.5*cameraX, 225);
  buildingGREY(785-.5*cameraX, 100);
  deli(965-.5*cameraX, 100);


  if (cSelect == 0)
    harryDraw();
  else
    oliviaDraw();
  /*
  if (pause==1) {
   alpha3+=10;
   }
   if (alpha3>=255) {
   alpha3=255;
   pause=3;
   }
   */



  if (pause==0) {
    movement();
  }
  bordersAndCamera();
  jump = 1;
  c1.update();
  p1.update();
  if (gy>450) {
    ouch();
  }
}