//level1


CLOUD c1 = new CLOUD(000, 350, 4000, 2);

PORTAL p1 = new PORTAL(730, 350, 2);

int alpha2=255;

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




  if (pause==0) {
    movement();
  }
  if (pause==1) {
    gy-=5;
    if (gy<0) {
      pause=3;
    }
  }
  bordersAndCamera();

  jump = 1;
  c1.update();

  p1.update();

  if (gy>450) {
    ouch();
  }

  fill(#000000, alpha2);
  rect(0, 0, 600, 400);
    alpha2-=10;
    if (alpha2<0) {
      alpha=0;
    
  }
}