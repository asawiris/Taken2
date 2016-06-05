float C1Y=100;
float ct=0;


void tree(float x, float y) {
  image(TREE, x, y);
}
void cloudPICTURE(float x, float y) {
  image(CLOUD, x, y);
}
void buildingRED(float x, float y, color c) {
  fill(c);
  rect(x-100, y-110, 200, 400);
  image(B1, x, y);
}
void buildingGREY(float x, float y, color c) {
  fill(c);
  rect(x-93, y-90, 175, 400);
  image(B2, x, y);
}
void buildingORANGE(float x, float y, color c) {
  fill(c);
  rect(x-90, y-100, 190, 400);
  image( B3, x, y);
}
void buildingGREEN(float x, float y, color c) {
  fill(c);
  rect(x-100, y-100, 200, 400);
  image(B4, x, y);
}
void deli(float x, float y) {
  image(DELI, x, y);
}
void daycare(float x, float y) {
  image(DAYCARE, x, y);
  textFont(font);
  fill(#F20DFF);
  textSize(15);
  text("DAYCARE", x-45, y-112);
}
void FOUND(float x, float y) {
  image(FOUND, x, y);
}
void light(int x, int y) {
  fill(#FFF708, 160);
  triangle(x+5, y+44, x-25, y+70, x+35, y+70);
  fill(0);
  rect(x, y, 10, 40);
  triangle(x+5, y+34, x-15, y+60, x+25, y+60);
}