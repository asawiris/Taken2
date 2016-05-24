int showHeart=1, life;

class life {
  int x, y;
  life(int _x, int _y) {
    x=_x;
    y=_y;
  }
  void update() {
    
    rect(x-20 - .5*cameraX,y-20,40,40);
    if (showHeart==1 && dist(gx, gy, x-.5*cameraX, y)<40) {
      showHeart=0;
      life++;
    }
    if (showHeart==1) {
      image(HEART, x-.5*cameraX, y, 40, 40);
    }
  }
}