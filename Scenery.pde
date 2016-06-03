float C1Y=100;
float ct=0;
void scenery() {
}
void tree(float x, float y) {
  image(TREE, x, y);
}
void cloud(float x, float y) {
  image(CLOUD, x, y);
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
void daycare(float x, float y){
 image(DAYCARE,x,y);
 textFont(font);
 fill(#F20DFF);
 textSize(15);
 text("DAYCARE",x-45,y-112);
}
void FOUND(float x, float y){
image(FOUND,x,y);
}
void light(int x, int y){
  fill(#FFF708,160);
  triangle(x+5,y+44,x-25,y+70,x+35,y+70);
  fill(0);
  rect(x,y,10,40);
  triangle(x+5,y+34,x-15,y+60,x+25,y+60);
  
}