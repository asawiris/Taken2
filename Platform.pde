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
    if (q==1) {
      fill(0);
      rect(x-cameraX-2, y-2, w+4, 14);
      fill(#989898);
      rect(x-cameraX, y, w, 10);
    }
    if (q==2) {
      //2 is for floors
      fill(#989898);
      rect(x-cameraX, y, w, 200);
      fill(#000000);
      rect(x-cameraX, y, w, 2);
    }
    if(q==3){
      fill(0,0);
      rect(x-cameraX-2, y-2, w+4, 14);
     
    }
  }
}