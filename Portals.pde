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
    if (dist(gx, gy, x+25, y)<5) {
      gx = x+25;
      println(x);
      pause=1;
      if (fadeC == 0) {
        fadeC = 1;
        nextLevel = nextMap;
      }
    }

    for ( int i = 0; i < 8; i++) {
      fill(#FFFF00, 255 - (255*i/8));

      rect(x - cameraX, y - 8 - 8*i, 50, 8, 2);
    }
  }
}