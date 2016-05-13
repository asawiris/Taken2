//portal
class PORTAL {
  int x, y, i=0;
  int nextMap; //1 is map1, 2 is map2, 3 is map3...

  PORTAL(int _x, int _y, int _nextMap) {
    x = _x;
    y = _y;
    nextMap = _nextMap;
  }

  void update() {
    if (dist(gx - 1 - .5*cameraX, gy, x, y)<5) {
      gx=x + 1 + .5*cameraX;
      pause=1;
      if (fadeC == 0) {
        fadeC = 1;
        nextLevel = nextMap;
      }
    }



    /*
    if (pause==3) {
     pause=0;
     page=nextMap;
     mapWidth=4000;
     cameraX=0;
     gx=30;
     //  alpha2-=30;
     }*/


    //fill(128);
    //ellipse(x-cameraX, y, 50, 20);

    for ( int i = 0; i < 8; i++) {
      fill(#FFFF00, 255 - (255*i/8));

      rect(x-25 - .5*cameraX, y - 8 - 8*i, 50, 8, 2);
    }
  }
}