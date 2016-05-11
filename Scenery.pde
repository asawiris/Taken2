//tab
float C1Y=100;
float ct=0;
void scenery() {
  if (page==1) {//level1
    tree(300-.5*cameraX, 270);
    //building(300-.5*cameraX, 261, #00aa00, 2);
    cloud(100-.5*cameraX, C1Y);
    cloud(300-.4*cameraX, 50);
    cloud(400-.3*cameraX, 100 );
    //building1(
    C1Y=100+5*cos(ct);
    ct+=.1;
  }
  if (page==2) {//level2
    tree(300-.5*cameraX, 261);
  }
}
void tree(float x, float y) {
  image(TREE, x, y, 160, 160);
}
void building(float x, float y, color c, float s) {
  rect(x, y, 100, 50);
}
void cloud(float x, float y) {
  image(CLOUD, x, y, 150, 150);
}