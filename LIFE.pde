int showHeart=1, life;

class life {
  int x, y;
  life(int _x, int _y) {
    x=_x;
    y=_y;
  }
  void update() {


    rect(gx-17 - cameraX, gy-55, 30, 55);
    rect(x-10 - .5*cameraX, y-10, 20, 20);

    if (showHeart==1 && ) {
      showHeart=0;
      life++;
    }
    if (showHeart==1) {
      image(HEART, x-.5*cameraX, y, 20, 20);
    }
  }
}