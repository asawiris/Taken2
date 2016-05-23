//level1

//int alpha2=255;
//int alpha3=0;
float c2X=1000-cameraX;

CLOUD c1 = new CLOUD(-100, 350, 4100, 2);
CLOUD c2 = new CLOUD(1200, 280, 200, 1);

PORTAL p1 = new PORTAL(962, 350, 3);
int phoneX=450, phoneY=400, HTPX=100, HTPY=100, HTPAlpha=255, HTPDone;
PHONE P = new PHONE(phoneX, phoneY);



void map1() {
  background(#2AC0F5);  

  scenery();



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
  /*
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
  deli(965-.5*cameraX, 100);
  tree(880-.5*cameraX, 270);







  //deli(965-cameraX, 100);
  // tree(880-cameraX, 270);
  if (gx>=845) {
    HTPDone=1;
  }

  //#F7FF24
  fill(#000000, HTPAlpha);
  rect(HTPX-5, HTPY-5, 410, 210, 12, 12, 12, 12);
  fill(#2476FF, HTPAlpha);
  rect(HTPX, HTPY, 400, 200, 12, 12, 12, 12);
  fill(#000000, HTPAlpha);
  textSize(18);
  text("HOW TO PLAY:", HTPX+102, HTPY+42);
  textFont(font, 18);
  fill(#ffffff, HTPAlpha);
  text("HOW TO PLAY:", HTPX+100, HTPY+40);
  textFont(font, 12);
  fill(#ffffff, HTPAlpha);
  text("Go Left", HTPX+7, HTPY+185);
  text("Go Right", HTPX+155, HTPY+185);
  text("Jump", HTPX+98, HTPY+120);

  //arrowLeft
  fill(#000000, HTPAlpha);
  rect(HTPX+50, HTPY+125, 40, 40, 12, 12, 12, 12);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+65, HTPY+142, 19, 5);
  triangle(HTPX+65, HTPY+154, HTPX+65, HTPY+135, HTPX+55, HTPY+144);
  //arrowUP
  fill(#000000, HTPAlpha);
  rect(HTPX+100, HTPY+125, 40, 40, 12, 12, 12, 12);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+118, HTPY+140, 5, 19); 
  triangle(HTPX+110, HTPY+140, HTPX+130, HTPY+140, HTPX+120.5, HTPY+130);
  //arrowRight
  fill(#000000, HTPAlpha);
  rect(HTPX+150, HTPY+125, 40, 40, 12, 12, 12, 12);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+158, HTPY+142, 19, 5);
  triangle(HTPX+175, HTPY+154, HTPX+175, HTPY+135, HTPX+185, HTPY+144);

  if (HTPDone==1) {
    HTPAlpha-=10;
    if (HTPAlpha<=0) {
      HTPAlpha=0;
    }
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
  c2.update();
  p1.update();
  P.update();
  if (gy>450) {
    ouch();
  }
}