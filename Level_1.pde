//level1

//int alpha2=255;
//int alpha3=0;
float c2X=1000-cameraX;
int change=30, change2=20;

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
  fill(#000000, HTPAlpha);
  rect(HTPX+97, HTPY+40, 214, 6);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+99, HTPY+41.5, 210, 3);

  textFont(font, 12);
  fill(#000000, HTPAlpha);
  text("Go Left", HTPX+9, HTPY+185-change);
  fill(#ffffff, HTPAlpha);
  text("Go Left", HTPX+7, HTPY+185-change);

  fill(#000000, HTPAlpha);
  text("Go Right", HTPX+157, HTPY+186-change);
  fill(#ffffff, HTPAlpha);
  text("Go Right", HTPX+155, HTPY+185-change);

  fill(#000000, HTPAlpha);
  text("Jump", HTPX+100, HTPY+121-change);
  fill(#ffffff, HTPAlpha);
  text("Jump", HTPX+98, HTPY+120-change);

  
  fill(#000000, HTPAlpha);
  text("Display\n Phone", HTPX+284, HTPY+157);
  fill(#ffffff, HTPAlpha);
  text("Display\n Phone", HTPX+282, HTPY+156);
  

  fill(#000000, HTPAlpha);
  rect(HTPX+300, HTPY+90-change2, 10, 10);
  rect(HTPX+310, HTPY+80-change2, 10, 10);
  rect(HTPX+320, HTPY+80-change2, 10, 10);
  rect(HTPX+330, HTPY+80-change2, 10, 10);
  rect(HTPX+340, HTPY+90-change2, 10, 10);
  rect(HTPX+290, HTPY+100-change2, 10, 10);
  rect(HTPX+290, HTPY+110-change2, 10, 10);
  rect(HTPX+350, HTPY+110-change2, 10, 10);
  rect(HTPX+350, HTPY+100-change2, 10, 10);
  rect(HTPX+350, HTPY+120-change2, 10, 10);
  rect(HTPX+290, HTPY+120-change2, 10, 10);
  rect(HTPX+350, HTPY+130-change2, 10, 10);
  rect(HTPX+290, HTPY+130-change2, 10, 10);
  rect(HTPX+340, HTPY+140-change2, 10, 10);
  rect(HTPX+300, HTPY+140-change2, 10, 10);
  rect(HTPX+310, HTPY+150-change2, 10, 10);
  rect(HTPX+320, HTPY+150-change2, 10, 10);
  rect(HTPX+330, HTPY+150-change2, 10, 10);
  rect(HTPX+320, HTPY+100-change2, 10, 10);
  rect(HTPX+320, HTPY+90-change2, 10, 10);
  rect(HTPX+320, HTPY+100-change2, 10, 10);
  rect(HTPX+330, HTPY+90-change2, 10, 10);
  rect(HTPX+330, HTPY+100-change2, 10, 10);
  rect(HTPX+340, HTPY+100-change2, 10, 10);
  rect(HTPX+300,HTPY+110-change2,50,30);
  rect(HTPX+310,HTPY+140-change2,30,10);
  fill(#F7FF24, HTPAlpha);
  rect(HTPX+310, HTPY+90-change2, 10, 10);
  rect(HTPX+310, HTPY+100-change2, 10, 10);
  rect(HTPX+300, HTPY+100-change2, 10, 10);
  rect(HTPX+310, HTPY+110-change2, 10, 10);
  rect(HTPX+300, HTPY+110-change2, 10, 10);

  //arrowLeft
  fill(#000000, HTPAlpha);
  rect(HTPX+50, HTPY+125-change, 40, 40, 12, 12, 12, 12);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+65, HTPY+142-change, 19, 5);
  triangle(HTPX+65, HTPY+154-change, HTPX+65, HTPY+135-change, HTPX+55, HTPY+144-change);
  //arrowUP
  fill(#000000, HTPAlpha);
  rect(HTPX+100, HTPY+125-change, 40, 40, 12, 12, 12, 12);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+118, HTPY+140-change, 5, 19); 
  triangle(HTPX+110, HTPY+140-change, HTPX+130, HTPY+140-change, HTPX+120.5, HTPY+130-change);
  //arrowRight
  fill(#000000, HTPAlpha);
  rect(HTPX+150, HTPY+125-change, 40, 40, 12, 12, 12, 12);
  fill(#ffffff, HTPAlpha);
  rect(HTPX+158, HTPY+142-change, 19, 5);
  triangle(HTPX+175, HTPY+154-change, HTPX+175, HTPY+135-change, HTPX+185, HTPY+144-change);

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