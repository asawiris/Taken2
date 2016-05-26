//lose
void lose() {
  pause=2;
  if (cSelect==0) {
    image(H10, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (cSelect==1) {
    image(GIRL, gx - 3 - cameraX, gy-29, 72, 66);
  }
  if (gx>width/2+cameraX) {
    gx-=2;
    if (gx<=width/2+cameraX) {
      gx= width/2+cameraX;
    }
  }
  if (gx<width/2+cameraX) {
    gx+=2;
    if (gx>=width/2+cameraX) {
      gx=width/2+cameraX;
    }
  }
  gy-=2;
  if (gy<=200) {
    gy=200;
  }
  textSize(30);
  text("YOU LOST!", 192, 200);
}