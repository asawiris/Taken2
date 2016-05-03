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
    if (dist(gx, gy, x, y)<10) {
      gx=x;
      pause=1;
    }


    if (pause==3) {
      pause=0;
      page=nextMap;
      //  if (page==2) {
      mapWidth=1000;
      cameraX=0;
      gx=30;
      // }
    }


    //fill(128);
    //ellipse(x-cameraX, y, 50, 20);

    for ( int i = 0; i<20; i++) {
      fill(#FFFF00, 230 - 20*i);
      rect(x-25 - cameraX, y - 10 - 10*i, 50, 10, 2);
    }
  }
}