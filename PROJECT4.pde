//afadf
//fads


int page=1;
int pause = 0;
void setup() {
  size(600, 400);
  frameRate(30);
  noStroke();
  imageMode(CENTER);
  sprite();
  //TITLE = loadImage("data/Title Page.png");
}
PImage TITLE;
PImage H1 = new PImage(62, 56, ARGB);//standing
PImage H2 = new PImage(62, 56, ARGB);//moving 1
PImage H3 = new PImage(62, 56, ARGB);//moving 2\
PImage H4 = new PImage(62, 56, ARGB);
PImage H5 = new PImage(62, 56, ARGB);//standing
PImage H6 = new PImage(62, 56, ARGB);//moving 1
PImage H7 = new PImage(62, 56, ARGB);//moving 2\
PImage H8 = new PImage(62, 56, ARGB);
PImage H9 = new PImage(62, 56, ARGB);//standing
PImage H10 = new PImage(62, 56, ARGB);//standing

void draw() {

  noStroke();
  if (page==0) {
    titlePage();
  }
  if (page==1) {
    map1();




    harryAnimation();
    harryDraw();
  }
  if (page==2) {
    map2();
    if (goRight==1) {
      // harryRIGHT();
    }
    if (goLeft==1) {
      //harryLEFT();
    }
  }

  //image(H9, gx-3 - cameraX, gy-29, 62, 56);
}
void keyPressed() {
  if (jump == 0 && keyCode == UP || jump == 0 && key == ' ') {
    jump = 1;
    gvy = -14;
  }
  if (keyCode == RIGHT) {
    goRight = 1;
  }
  if (keyCode == LEFT) {
    goLeft= 1;
  }
}
void keyReleased() {
  if (keyCode == RIGHT) {
    goRight = 0;
  }
  if (keyCode == LEFT) {
    goLeft= 0;
  }
}

void mousePressed() {
  if (dist(mouseX, mouseY, startX, startY)<25) {
    page=1;
  }
}