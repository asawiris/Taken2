class THWOMP {
  float tx, ty;
  int tState = 0;
  int ground, hurt=0;

  THWOMP(float _tx, float _ty, int _ground) {
    tx=_tx;
    ty=_ty;
    ground=_ground;
  }

  void update() {
    fill(#3BFF50);
    rect(tx-cameraX, ty, 70, 70);
    image(WASH, tx+32-cameraX, ty+32);
    if (tState==0 && gx > tx && gx< tx+70) {
      tState=1;
    }
    if (tState==1) {
      ty+=15;
      image(WASHMAD, tx+32-cameraX, ty+18);
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
      lifeVAR-=1;
    }
  }
}