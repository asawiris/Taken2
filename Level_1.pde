float c2X=1000-cameraX, time=30;
int change=30;
color textC=(255);
int phoneX=450, phoneY=400, HTPX=100, HTPY=100, HTPAlpha=255, HTPDone;

CLOUD c1 = new CLOUD(-100, 350, 3000, 2);
CLOUD c2 = new CLOUD(2200, 280, 200, 1);
CLOUD c3 = new CLOUD(2550, 250, 200, 1);
CLOUD cloud4 = new CLOUD(3800, 350, 300, 2);
CLOUD cloud6 = new CLOUD(2900, 220, 100, 1);
CLOUD cloud7 = new CLOUD(3000, 350, 200, 2);
CLOUD cloud8 = new CLOUD(3300, 350, 200, 2);
CLOUD cloud9 = new CLOUD(3600, 350, 200, 2);
THWOMP t1 = new THWOMP(2615, 100, 275);
THWOMP t2 = new THWOMP(3060, 100, 275);
THWOMP t3 = new THWOMP(3365, 100, 275);
prana pr1 = new prana(2935, 100, 250);
prana pr2 = new prana(3240, 100, 250);
prana pr3 = new prana(3535, 100, 250);
life HEART1 = new life(2950, 205);
PORTAL p1 = new PORTAL(1160+820, 350, 3);
PORTAL portal2 = new PORTAL(3900, 350, 2);
PORTAL storePortal = new PORTAL(1226,350,7);
PHONE P = new PHONE(phoneX, phoneY);


void map1() {
  background(#2AC0F5); 
  println(gx);
  if (pause==0) {
    movement();
  }
  bordersAndCamera();
  cloudPICTURE(100-.6*cameraX, 100);
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
  
  cloudPICTURE(2850-.6*cameraX, 75 );
  cloudPICTURE(3100-.6*cameraX, 50);
  cloudPICTURE(3350-.6*cameraX, 100 );
  cloudPICTURE(3600-.6*cameraX, 75);
  cloudPICTURE(3850-.6*cameraX, 50 );
  
  buildingRED(560-cameraX, 190, #08FFFD);
  buildingGREY(772-cameraX, 112, #AC08FF);
  buildingGREEN(975-cameraX, 150, #7EFF08);
  deli(2010-cameraX, 50);
  //buildingORANGE(1395-cameraX, 190);

  buildingRED(1590-cameraX, 190, #FF7D3B);
  buildingGREY(325+1070-cameraX, 112, #024ECE);
  buildingGREY(735+1070-cameraX, 112, #CE029B);
  //buildingORANGE(930+1070-cameraX, 190, #60CE02);
  fill(#00CFE0);
  rect(1080-cameraX,80,200,500);
   image(storeImage,1180-cameraX,190);
   
   fill(0);
   textSize(25);
   text("STORE",1125-cameraX,140);
  //buildingGREEN(985+1070-cameraX, 150);
  //buildingGREEN(2223-cameraX, 150, #02CEAA);

  tree(860-cameraX, 270);
  if (NEW==1) {
    time-=.033;
    float min = time/60.0;
    String sec = ""+(int)(time%60) + "" ;
    if ((int)(time%60) < 10) {
      sec = "0" + (int)(time%60);
    }
    if (time<10) {
      textC = #FF0000;
    }
    fill(textC);
    textSize(15);
    text((int)min + ":" +sec, 480, 40);
  }
  if (time <=0 || gy>450) {
    time=0;
    lifeVAR=0;
  }
  if (gx>=575) {
    HTPDone=1;
  }
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
  text("Show/Hide\n  Phone", HTPX+267, HTPY+142);
  fill(#ffffff, HTPAlpha);
  text("Show/Hide\n  Phone", HTPX+265, HTPY+141);
  fill(#000000, HTPAlpha);
  rect(HTPX+260, HTPY+90, 110, 30, 12, 12, 12, 12);
  fill(255, HTPAlpha);
  text("SPACE", HTPX+287, HTPY+112);
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
  if (HTPDone==0) {
    HTPAlpha=255;
  }
  if (HTPDone==1) {
    HTPAlpha-=10;
    if (HTPAlpha<=0) {
      HTPAlpha=0;
    }
  } 
  jump = 1;
  c1.update();
  if (NEW == 1) {
    c2.update();
    c3.update();
    t1.update();
    t2.update();
    t3.update();
    portal2.update();
    pr1.update();
    pr2.update();
    cloud6.update();
    Lakitu();
    pr3.update();
  }
  cloud7.update();
  cloud8.update();
  cloud9.update();
  cloud4.update();
  HEART1.update();
  storePortal.update();
  if (nm2==1) {
    p1.update();
  }  
  P.update();
  if (lifeVAR <1) {
    lose();
  }
  if (lifeVAR >= 1) {
    if (cSelect == 0)
      harryDraw();
    else
      oliviaDraw();
  }
  image(TRAIN, 3922-cameraX, 263);
  fill(0);
  textSize(15);
  text("SUBWAY", 3895-cameraX, 259);
  if (NEW == 0 && gx>2110) {
   gx=2110;
  }
  ReplayAnimation();
}