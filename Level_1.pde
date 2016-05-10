//level1
CLOUD c0 = new CLOUD(0, 350, 400,2);
CLOUD c1 = new CLOUD(50, 300, 100,1);
CLOUD c2 = new CLOUD(200, 250, 70,1);
CLOUD c3 = new CLOUD(500, 350, 1000,2);

PORTAL p1 = new PORTAL(330, 350, 2);



void map1() {
  background(#2AC0F5);
  scenery();
  


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
  //fill(#74EADC);
  //rect(0-cameraX,350, 400,100);


  jump = 1;
  c0.update();
  //c1.update();
  //c2.update();
  c3.update();
  p1.update();

  character();
  if (gy>450) {
    ouch();
  }
}