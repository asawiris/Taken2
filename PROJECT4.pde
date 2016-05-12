//github
int page=0;
int pause = 0;
int music=0;
void setup() {
  size(600, 400);
  frameRate(30);
  noStroke();
  imageMode(CENTER);
  sprite();
  sound();
  TITLE = loadImage("data/TITLE.png");
  CLOUD = loadImage("data/cloud.png");
  GIRL = loadImage("data/GIRL.png");
  BOY = loadImage("data/BOY.png");
  TREE = loadImage("data/TREE.png");
  CHOOSE = loadImage("data/CHOOSE.png");
  RED = loadImage("data/RED.png");
  GREY = loadImage("data/GREY.png");
  DELI = loadImage("data/DELI.png");
  player = minim.loadFile("data/TitleSong.mp3", 2048);
}



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
PImage G1 = new PImage(62, 56, ARGB);//standing
PImage G2 = new PImage(62, 56, ARGB);//moving 1
PImage G3 = new PImage(62, 56, ARGB);//moving 2\
PImage G4 = new PImage(62, 56, ARGB);
PImage G5 = new PImage(62, 56, ARGB);//standing
PImage G6 = new PImage(62, 56, ARGB);//moving 1
PImage G7 = new PImage(62, 56, ARGB);//moving 2\
PImage G8 = new PImage(62, 56, ARGB);
PImage G9 = new PImage(62, 56, ARGB);//standing
PImage G10 = new PImage(62, 56, ARGB);//standing
PImage GIRL, BOY, CLOUD, TREE, CHOOSE, TITLE, RED, DELI, STOP, GREY;

void draw() {
  noStroke();
  if (music==1) {
    player.play();
  }
  if (page==0) {
    titlePage();
     //music=1;
  }
  if (page==1) {

    map1();
    characterAnimation();
    if (cSelect == 0)
      harryDraw();
    else
      oliviaDraw();
  }
  if (page==2) {
    map2();
    characterAnimation();
    if (cSelect == 0)
      harryDraw();
    else
      oliviaDraw();
  }
  if (page == 3) {
    chooseCharacter();
  }
  if (page == 4) {
    //cutscene();
  }
}

void stop() {
  if (page==2 || page == 1) {
    player.close();
    minim.stop();
    super.stop();
  }
}

void keyPressed() {
  if (page > 0) {
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
  if (page == 0 && dist(mouseX, mouseY, chooseX, chooseY)<25) {
    page=3;
    goRight = 0;
    gx = 0;
    gy = 0;
  }
  if (page == 3 && dist(mouseX, mouseY, startX, startY)<20) {
    fade=1;
  }
  if (page == 3 && mouseX>harryX && mouseX<harryX+82 && mouseY>harryY && mouseY<harryY+175) {
    chosen=1;
    cSelect=0;
    harryRect=1;
    jadeRect=0;
  }
  if (page == 3 && mouseX>jadeX && mouseX<jadeX+ 94 && mouseY>jadeY && mouseY<jadeY+175) {
    chosen=1;
    cSelect=1;
    jadeRect=1;
    harryRect=0;
  }
}