//level2
CLOUD c4 = new CLOUD(0, 350, 400, 2);
CLOUD c5 = new CLOUD(50, 300, 100, 1);
CLOUD c6 = new CLOUD(200, 250, 70, 1);
CLOUD c7 = new CLOUD(500, 350, 1000, 2);


void map2() {
  background(#9D74EA);
  scenery();
  
    

    if (cSelect == 0)
      harryDraw();
    else
      oliviaDraw();
  


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


  jump = 1;//1 line of code. falling jump fix
  c4.update();
  c5.update();
  c6.update();
  c7.update();
  //character();
  if (gy>450) {
    ouch();
  }
}