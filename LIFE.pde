int lifeVAR=3;
int lastLife;
int hurt;

class life {

  int x, y;
  int showHeart=1;

  life(int _x, int _y) {
    x=_x;
    y=_y;
  }

  void update() {
    textSize(12);
    fill(0);
    text("Money:$", 17, 62);
    text(money, 102, 62);
    fill(255);
    text("Money:$", 15, 60);
    text(money, 100, 60);
    if (lifeVAR==1) {
      image(HEART, 30, 30);
      //lastLife=1;
    }
    if (lifeVAR==2) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
    }
    if (lifeVAR==3) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
    }
    if (lifeVAR==4) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
    }
    if (lifeVAR==5) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
      image(HEART, 150, 30);
    }
    if (lifeVAR==6) {
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
      image(HEART, 150, 30);
      image(HEART, 180, 30);
    }
    if (showHeart==1 && dist(gx, gy, x, y)<30) {
      showHeart=0;
      lifeVAR++;
    }
    if (showHeart==1) {
      image(HEART, x-cameraX, y);
    }
  }
}