int life=39;

class life {
  int x, y;
  int showHeart=1;
  life(int _x, int _y) {
    x=_x;
    y=_y;
  }
  void update() {
    
    if(life==17){
      image(HEART, 30, 30);
    }
    if(life==28){
      image(HEART, 30, 30);
      image(HEART, 60, 30);
    }
    if(life==39){
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
    }
    if(life==50){
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
    }
    if(life==61){
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
      image(HEART, 150, 30);
    }
    if(life==72){
      image(HEART, 30, 30);
      image(HEART, 60, 30);
      image(HEART, 90, 30);
      image(HEART, 120, 30);
      image(HEART, 150, 30);
      image(HEART, 180, 30);
    }
    //rect(gx-17 - cameraX, gy-55, 30, 55);
    //rect(x-10-cameraX,y-10,20,20);
    if (showHeart==1 && dist(gx,gy,x,y)<30) {
      showHeart=0;
      life+=11;
    }
    if (showHeart==1) {
      image(HEART, x-cameraX, y);
    }
  }
}