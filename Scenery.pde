//tab
void scenery() {
  if(page==1){//level1
  tree(300-.5*cameraX, 261, #00aa00, 2);
  //building(300-.5*cameraX, 261, #00aa00, 2);
  cloud(100-.5*cameraX, 100);
  cloud(100-.5*cameraX, 100);
  cloud(100-.5*cameraX, 100);
  }
  if(page==2){//level2
    tree(300-.5*cameraX, 261, #00aa00, 2);
  }
  
}
void tree(float x, float y, color c, float s) {
  fill(#334422);
  rect(x-10*s, y, 20*s, 90*s);
  fill(c);
  ellipse(x, y, 50*s, 50*s);
}
void building(float x, float y, color c, float s) {
  rect(x, y, 100, 50);
}
void cloud(float x, float y) {
  image(CLOUD1, x, y, 150, 150);
}