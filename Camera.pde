//camera
int mapWidth = 4000;
float cameraX = 0;

void bordersAndCamera() {
  //left
  if (gx < 5) {
    gx = 5;
  }
  //right
  if (gx > mapWidth - 5) {
    gx = mapWidth - 5;
  }
  //horizontal camera
  if (gx > cameraX + 250 && cameraX < (mapWidth - width)) {
    cameraX = gx - 250;
  }
  if (gx < cameraX + 150 && cameraX > 0) {
    cameraX = gx - 150;
  }
}