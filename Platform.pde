//platform

class CLOUD {
  int x, y, w, q;
  CLOUD(int _x, int _y, int _w, int _q) {
    x = _x;
    y = _y;
    w = _w;
    q = _q;
  }
  void update() {
    if (gx+5 > x && gx-5 < x + w   && gy > y && gy<=y + gvy) {
      gy = y;


      jump = 0;
      gvy = 0;
    }
    fill(#989898);
    if (q==1) {
      rect(x-cameraX, y, w, 5);
    }
    if (q==2) {
      //2 is for floors
      rect(x-cameraX, y, w, 200);
    }
  }
}