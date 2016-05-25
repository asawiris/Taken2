//github
int phone=0;
int page=1;
int pause = 0;
int music=0;
int nextLevel;
int level = 1;
boolean sp = false;

void setup() {
  size(600, 400);
  frameRate(30);
  noStroke();
  imageMode(CENTER);
  sprite();
  TITLE = loadImage("data/TITLE.png");
  CLOUD = loadImage("data/cloud.png");
  GIRL = loadImage("data/GIRL.png");
  BOY = loadImage("data/BOY.png");
  TREE = loadImage("data/TREE.png");
  CHOOSE = loadImage("data/CHOOSE.png");
  DELI = loadImage("data/DELI.png");

  RED = loadImage("data/RED.png");
  GREY = loadImage("data/GREY.png");
  ORANGE = loadImage("data/ORANGE.png");
  GREEN = loadImage("data/GREEN.png");

  TABLE = loadImage("data/TABLE.png");
  OSITTING = loadImage("data/OSITTING.png");
  HSITTING = loadImage("data/HSITTING.png");
  font = loadFont("data/PressStart2P-32.vlw");
  SBUB = loadImage("data/SBUB.png");
  SBUB2 = loadImage("data/SBUB2.png");
  CHAIR = loadImage("data/CHAIR.png");
  HLEFT = loadImage("data/HLEFT.png");
  OLEFT = loadImage("data/OLEFT.png");
  HEART = loadImage("data/HEART.png");
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
PImage GIRL, BOY, CLOUD, TREE, CHOOSE, TITLE, RED, DELI, STOP, GREY, ORANGE, GREEN, TABLE, OSITTING, HSITTING, SBUB, SBUB2, CHAIR, HLEFT, OLEFT, HEART;
PFont font;
int fadeC = 3;
int alphaC = 255;
//1 start to fade to black
//3 means you fade from black
//0 means no fading occurs

void fader() {
  if (fadeC == 1) {
    fadeC = 2;
  }
  if (fadeC == 2) {
    alphaC+=10;
    if (alphaC >=255) {//fully black
      alphaC = 255;
      fadeC = 3;
      if (page == 0) {
        page=3;
        goRight = 0;
        gx = 20;
        gy = 350;
      } else if (page == 3) {
        page = 1;
      } else if (page == 1) {
        pause = 0;
        level = nextLevel; 
        if (level == 1) {
          if (NEW==1) {
            gx=1300;
          }
        }
        if (level==2) {
          gx=40;
          gy=350;
        }
        if (level == 3) {
          gx=100;
        }
      }
    }
  }
  if (fadeC == 3) {
    alphaC -= 20;
    if (alphaC <=0) {
      alphaC = 0;
      fadeC = 0;
    }
  }
  fill(#000000, alphaC);
  rect(-5, -5, width+10, height+10);
}

void draw() {
  noStroke();
  if (page==0) {
    titlePage();
    //music=1;
  }
  if (page==1) {
    if (level == 1) {
      map1();
    }
    if (level == 2) {
      map2();
    }
    if (level == 3) {
      deli();
    }
    if (level==4) {
      story();
    }
    characterAnimation();
  }
  if (page == 3) {
    chooseCharacter();
  }
  if (fadeC > 0) {
    fader();
  }
  //fill(0);
  //text(frameRate, 50, 50);
  sp  = false;
}

void keyPressed() {
  if (page > 0) {
    if (jump == 0 && keyCode == UP ) {
      jump = 1;
      gvy = -14;
    }
    if (keyCode == RIGHT) {
      goRight = 1;
    }
    if (keyCode == LEFT) {
      goLeft= 1;
    }
    if (key == ' ') {
      sp  = true;
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
    if (fadeC == 0) {
      fadeC = 1;
    }
  }
  if (page == 3) {
    if ( dist(mouseX, mouseY, startX, startY)<20) {
      if (fadeC == 0) {
        fadeC = 1;
      }
    }
    if ( mouseX>harryX && mouseX<harryX+82 && mouseY>harryY && mouseY<harryY+175) {
      chosen=1;
      cSelect=0;
      harryRect=1;
      jadeRect=0;
    }
    if (mouseX>jadeX && mouseX<jadeX+ 94 && mouseY>jadeY && mouseY<jadeY+175) {
      chosen=1;
      cSelect=1;
      jadeRect=1;
      harryRect=0;
    }
  }
}