class prana {

  float px, py;
  int pState;
  int sky;

  prana(float _px, float _py, int _sky) {
    px=_px;
    py=_py;
    sky=_sky;
  }

  void update() {
    rect(px+12.5-cameraX, py+5, 5, 1000);
    fill(#FF0040);
    ellipse(px+15-cameraX, py+15, 30, 30);
    fill(#FFFFFF);
    ellipse(px+10-cameraX, py+11, 10, 10);
    ellipse(px+20-cameraX, py+11, 10, 10);
    fill(#000000);
    ellipse(px+10-cameraX, py+11, 4, 4);
    ellipse(px+20-cameraX, py+11, 4, 4);
    ellipse(px+15-cameraX, py+22, 15, 5);
    if (dist(cx+15, cy+15, px, py)<15) {
      cx=0;
      cy=420;
    }
    if (pState==0 && cx+40 < px || pState==0 && cx> px+30) {
      pState=1;
    }
    if (pState==1) {
      py-=6;
    }
    if (pState==1 && py<sky) {
      py=sky;
      pState=2;
    }
    if (pState==2) {
      py+=3;
    }
    if (py>405) {
      py=405;
      pState=0;
    }
    if (hurt<=0 && dist(gx-cameraX, gy, px+15-cameraX, py+1)<20) {
      hurt=30;
      lifeVAR--;
    }
  }
}