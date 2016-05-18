//level1

//int alpha2=255;
//int alpha3=0;
CLOUD c1 = new CLOUD(-100, 350, 4100, 2);

PORTAL p1 = new PORTAL(462, 350, 3);
int phoneX=450,phoneY=400;
PHONE P = new PHONE(phoneX,phoneY);
int fontAlpha=255;


void map1() {
  background(#2AC0F5);  
  
  scenery();
  
  tree(300-.5*cameraX, 270);
  /*
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
   if(gx>100){
   buildingGREY(785-.5*cameraX, 100);
   }
   if(gx>200){
   //buildingGREEN(930-.5*cameraX,200);
   }
   if(gx>200){
   buildingORANGE(1230-.5*cameraX,100);
   }
   */
  deli(465-.5*cameraX, 100);
  

  if (cSelect==0) {
    fill(#FFFFFF, fontAlpha);
    textFont(font, 10);
    text("Meet your wife at the deli", 50-cameraX, 100);
  }
  if (cSelect==1) {
    fill(#FFFFFF, fontAlpha);
    textFont(font, 10);
    text(" Meet your husband at the deli", 50-cameraX, 100);
  }

  if (cSelect == 0)
    harryDraw();
  else
    oliviaDraw();

  

    if (pause==0) {
    movement();
  }
  bordersAndCamera();
  jump = 1;
  c1.update();
  p1.update();
  println(phoneY);
  
  P.update();
  if (gy>450) {
    ouch();
  }
}