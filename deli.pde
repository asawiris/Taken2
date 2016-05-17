CLOUD C10 = new CLOUD(-300, 350, 4000, 2);
PORTAL p2 = new PORTAL(50, 350, 1);
PORTAL p3= new PORTAL(400, 350, 4);

void deli() {

  background(#FFFFFF);

  fill(#000000);
  rect(-30 - cameraX, 0, 20, 600);

  tree(-70-.5*cameraX, 270);
  fill(#7A4407);
  rect(-80 -.5*cameraX, 280, 20, 40);


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
  p3.update();
  bordersAndCamera();
}