//tab
float C1Y=100;
float ct=0;
void scenery() {
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

void buildingRED(float x, float y) {
  image(RED, x, y);
}
void buildingGREY(float x, float y) {
  image(GREY, x, y);
}
void buildingORANGE(float x, float y) {
  image( ORANGE, x, y);
}
void buildingGREEN(float x, float y) {
  image(GREEN, x, y);
}

void deli(float x, float y) {
  image(DELI, x, y);
}