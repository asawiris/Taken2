//platform

class CLOUD {
  int x, y, w;
  CLOUD(int _x, int _y, int _w) {
    x = _x;
    y = _y;
    w = _w;
  }
  void update() {
    if (gx+5 > x && gx-5 < x + w   && gy > y && gy<=y + gvy) {
      gy = y;
      
    
      jump = 0;
      gvy = 0;
    }
    fill(#74EADC);
    rect(x-cameraX, y, w, 5);
  }
}