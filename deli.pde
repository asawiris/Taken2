CLOUD C10 = new CLOUD(-100, 350, 4000, 2);
PORTAL p2 = new PORTAL(200, 350, 1);
void deli(){
  
 background(#FFFFFF);
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
  bordersAndCamera();
  
  
  
 
  
}