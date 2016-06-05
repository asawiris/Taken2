CLOUD storeCloud = new CLOUD(-1000, 350, 6000, 2);
PORTAL buyPortal = new PORTAL(300,350,8);
PORTAL leavePortal = new PORTAL(10,350,1);

void store(){
  background(#CE02CB);
  fill(0);
  rect(400,300,200,100);

  
  
  if (cSelect == 0)
    harryDraw();
  else
    oliviaDraw();
  if (pause==0) {
    movement();
  }
  jump = 1;
  storeCloud.update();
  buyPortal.update();
  leavePortal.update();
  if (gx<0) {
    gx=0;
  }
  if (gx>width) {
    gx=width;
  }
  bordersAndCamera();
}