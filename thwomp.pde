

class THWOMP {
  float tx, ty;
  int tState = 0;
  int ground,hurt=0;

  THWOMP(float _tx, float _ty, int _ground) {
    tx=_tx;
    ty=_ty;
    ground=_ground;
  }

  void update() {

    fill(#3BFF50);
    rect(tx-cameraX, ty, 70, 70,12,12,12,12);
    image(WASH,tx-cameraX,ty);
    if (tState==0 && gx > tx && gx< tx+70) {
      tState=1;
    }
    if (tState==1) {
      ty+=10;
      fill(#FF3B55);
      ellipse(tx+20-cameraX, ty+10, 20, 20);
      fill(#000000);
      ellipse(tx+20-cameraX, ty+10, 10, 10);
      fill(#FF3B55);
      ellipse(tx+50-cameraX, ty+10, 20, 20);
      fill(#000000);
      ellipse(tx+50-cameraX, ty+10, 10, 10);
      fill(#FF3B55);
      rect(tx+10-cameraX, ty+40, 50, 10);
    }
    if (tState==1 && ty>ground) {
      ty=ground;
      tState=2;
    }
    if (tState==2) {
      ty-=3;
    }
    if (ty<50) {
      ty=50;
      tState=0;
    }
    if (gx>tx && gx<tx+70 && gy-27>ty && gy-27<ty+70) {
      life-=1;
    }
    println(life);
  }
}