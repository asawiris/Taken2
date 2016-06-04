CLOUD C10 = new CLOUD(-1000, 350, 6000, 3);
PORTAL p2 = new PORTAL(25, 348, 1);
PORTAL p3= new PORTAL(375, 350, 4);
PHONE PH2 = new PHONE(phoneX, phoneY);

void deli() {
  background(#FFFFFF);
  image(back,300,200);
  fill(#000000);
  if (endStory==1) {
    p3.update();
  }
 /*
  if(gy>350){
   gy=350; 
  }
  */
  fill(0);
  rect(17, 268, 65, 81);
  fill(#5ecdff);
  rect(22, 273, 55, 75);
  fill(0);
  rect(22, 228, 56, 31);
  fill(255);
  rect(25, 231, 50, 25);
  fill(#ff0000);
  textFont(font, 12);
  text("EXIT", 27.5, 250);
  light(20,-10);
  light(250,-10);
  light(500,-10);
  image(TABLE, storyX+235, storyY-32,80,80);
  image(CHAIR, storyX+183, storyY-40,80,80);
  
  image(TABLE, storyX+40, storyY-32,80,80);
  image(CHAIR, storyX, storyY-40,80,80);
  image(CHAIRLEFT, storyX+80,storyY-40,80,80);
  
  image(CHAIR, storyX+350,storyY-40,80,80);
   image(TABLE, storyX+380, storyY-32,80,80);
  
  if (cSelect==1) {
    image(HLEFT, storyX+285, storyY-22);
  }
  if (cSelect==0) {
    image(OLEFT, storyX+285, storyY-22);
  }
  if (cSelect == 0)
    harryDraw();
  else
    oliviaDraw();
  if (pause==0) {
    movement();
  }
  jump = 1;
 C10.update();
  p2.update();
  PH2.update();
  bordersAndCamera();
  if(gx<0){
   gx=0; 
  }
  if(gx>width){
   gx=width; 
  }
}