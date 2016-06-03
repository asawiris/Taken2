int lifeVAR=39;
int lastLife;

class life {

  int x, y;
  int showHeart=1;

  life(int _x, int _y) {
    x=_x;
    y=_y;
  }

  void update() {
    if (lifeVAR>=17 && lifeVAR<=27) {
      image(HEART, 30, 30);
      lastLife=1;
    }
    if (lifeVAR>=28 && lifeVAR <= 38) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
    }
    if (lifeVAR>=39 && lifeVAR<=61) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
    }
    if (lifeVAR>=50 && lifeVAR <= 60) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
    }
    if (lifeVAR>=61 && lifeVAR <= 71) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
      image(HEART, 150, 30);
    }
    if (lifeVAR>=72) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
      image(HEART, 150, 30);
      image(HEART, 180, 30);
    }
    //rect(gx-17 - cameraX, gy-55, 30, 55);
    //rect(x-10-cameraX,y-10,20,20);
    if (showHeart==1 && dist(gx, gy, x, y)<30) {
      showHeart=0;
      lifeVAR+=16;
    }
    if (showHeart==1) {
      image(HEART, x-cameraX, y);
    }
  }
}
 
/*
  when collision occurs: hurt=20 or {30} or 40
 hurt<=0
 hurt--; for the whole game
 */