//level2
CLOUD c4 = new CLOUD(0, 350, 400, 2);
CLOUD c5 = new CLOUD(50, 300, 100, 1);
CLOUD c6 = new CLOUD(200, 250, 70, 1);
CLOUD c7 = new CLOUD(500, 350, 1000, 2);


void map2() {
  
  
  
  background(#9D74EA);
  
  
   cloud(100-.6*cameraX, 1);
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
  daycare(200-cameraX,190);

  if (life <=11) {
    lose();
  }
  if (life > 11) {
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
    life=6;
  }

  bordersAndCamera();
  jump = 1;//1 line of code. falling jump fix
  c4.update();
  c5.update();
  c6.update();
  c7.update();
  if (gy>450) {
    lose();
  }
}