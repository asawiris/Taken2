int phone=0;
int page=1;
int pause = 0;
int music=0;
int nextLevel;
int level = 8;
boolean sp = false;
int rPlayAlpha = 0, FADE;
int inStore = 0;
int money=3;

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
  B1 = loadImage("data/BUILDING1.png");
  B2 = loadImage("data/BUILDING2.png");
  B3 = loadImage("data/BUILDING3.png");
  B4 = loadImage("data/BUILDING4.png");
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
  WASH = loadImage("data/WASH.png");
  WASHMAD = loadImage("data/WASHMAD.png");
  TRAIN = loadImage("data/TRAIN.png");
  DAYCARE = loadImage("data/DAYCARE.png");
  FOUND = loadImage("data/FOUND.png");
  BABY = loadImage("data/BABY.png");
  HELI = loadImage("data/HELI.png");
  CHAIRLEFT = loadImage("data/CHAIRLEFT.png");
  HSl = loadImage("data/HSl.png");
  OSL = loadImage("data/OSL.png");
  back = loadImage("data/back.jpg");
  restartButton = loadImage("data/restart.png");
  storeImage = loadImage("data/STORE.png");
  cashierImage = loadImage("data/cashier.png");
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
PImage GIRL, storeImage, restartButton, cashierImage, back, CHAIRLEFT, BOY, CLOUD, TREE, OSL, HSl, CHOOSE, TITLE, B1, DELI, HELI, B2, B3, BABY, B4, TABLE, OSITTING, HSITTING, SBUB, SBUB2, CHAIR, HLEFT, OLEFT, HEART, WASH, WASHMAD, TRAIN, DAYCARE, FOUND;
PFont font;
int fadeC = 3;
int alphaC = 255, initiate=0;
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
            gx=2110;
          }
          if (NEW == 0 && inStore == 1) {
            gx = 1260;
          }
        }
        if (level==2) {
          gx=40;
          gy=350;
        }
        if (level == 3) {
          gx=100;
        }
        if (level==5) {
          gx=100;
        }
        if (level==7) {
          gx =100;
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
  textFont(font);
  hurt--;
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
    if (level==5) {
      // map3();
      daycare();
    }
    if (level==6) {
      WIN();
    }
    if (level == 7) {
      store(); 
      cameraX = 0;
    }
    if (level == 8) {
      BUYING();
      inStore = 1;
    }
    characterAnimation();
  }
  if (page == 3) {
    chooseCharacter();
  }
  if (fadeC > 0) {
    fader();
  }
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
    if (key == 'p') {
      lifeVAR--;
    }
    if (key == 'o') {
      level=5;
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
  if (mouseX>skipX && mouseX<skipX+40 && mouseY>skipY && mouseY<skipY+40) {
    nextLevel = 1;
    endStory=0;
    NEW=1;
    fadeC=1;
  }
  if (lifeVAR <1 && mouseX>rPlayX && mouseX<rPlayX+40 && mouseY>rPlayY && mouseY<rPlayY+40) {
    initiate = 1;
  }
  if (level==8 && mouseX>checkoutX && mouseX<checkoutX+270 && mouseY>checkoutY && mouseY<checkoutY+20) {
    level = 7; 
    gx = 120;
  }
  if (level == 8 && money>=3 && mouseX>speedBoostX && mouseX<speedBoostX+90 && mouseY>speedBoostY && mouseY<speedBoostY+90) {
    money-=3;
    speed+=1;
  }
  if (level == 8 && money>=3 && mouseX>healthBoostX && mouseX<healthBoostX+107 && mouseY>healthBoostY && mouseY<healthBoostY+80) {
    money-=3;
    lifeVAR+=1;
  }
}