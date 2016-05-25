int mTickRIGHT = 0;
int mFrameRIGHT = 1;
int mTickLEFT = 1;
int mFrameLEFT = 1;
int mFrame = 1;

void sprite() {
  PImage whole = loadImage("data/COMPLETERIGHT.png");
  PImage whole2 = loadImage("data/COMPLETELEFT.png");
  PImage whole3 = loadImage("data/characterGirlRight.png");
  PImage whole4 = loadImage("data/characterGirlLeft.png");

  //HARRY
  //right
  H1.copy(whole, 0, 0, 64, 64, 0, 0, 64, 64);
  H2.copy(whole, 64, 0, 64, 64, 0, 0, 64, 64);
  H3.copy(whole, 128, 0, 64, 64, 0, 0, 64, 64);
  H4.copy(whole, 192, 0, 64, 64, 0, 0, 64, 64);
  H9.copy(whole, 256, 0, 64, 64, 0, 0, 64, 64);

  //left
  H5.copy(whole2, 0, 0, 64, 64, 0, 0, 64, 64);
  H6.copy(whole2, 64, 0, 64, 64, 0, 0, 64, 64);
  H7.copy(whole2, 128, 0, 64, 64, 0, 0, 64, 64);
  H8.copy(whole2, 192, 0, 64, 64, 0, 0, 64, 64);
  H10.copy(whole, 256, 0, 64, 64, 0, 0, 64, 64);

  //olivia
  G1.copy(whole3, 0, 0, 64, 64, 0, 0, 64, 64);
  G2.copy(whole3, 64, 0, 64, 64, 0, 0, 64, 64);
  G3.copy(whole3, 128, 0, 64, 64, 0, 0, 64, 64);
  G4.copy(whole3, 192, 0, 64, 64, 0, 0, 64, 64);
  G9.copy(whole3, 256, 0, 64, 64, 0, 0, 64, 64);

  //left
  G5.copy(whole4, 0, 0, 64, 64, 0, 0, 64, 64);
  G6.copy(whole4, 64, 0, 64, 64, 0, 0, 64, 64);
  G7.copy(whole4, 128, 0, 64, 64, 0, 0, 64, 64);
  G8.copy(whole4, 192, 0, 64, 64, 0, 0, 64, 64);
  G10.copy(whole4, 256, 0, 64, 64, 0, 0, 64, 64);
  //standing
}

void characterAnimation() {
  if (goRight == 1 ) {
    if (mFrame < 0) {
      mFrame=1;
    }
    mTickRIGHT++;
    if (mTickRIGHT > 5) {
      mTickRIGHT = 0;
      mFrame++;
      if (mFrame == 5) {
        mFrame = 1;
      }
    }
  }
  if (goLeft == 1 ) {
    if (mFrame > 0) {
      mFrame =-1;
    }
    mTickLEFT++;
    if (mTickLEFT > 5) {
      mTickLEFT = 0;
      mFrame--;
      if (mFrame == -5) {
        mFrame = -1;
      }
    }
  }
}

void harryDraw() {
  if (jump ==1 && goRight == 1) {
    mFrame = 4;
  }
  if (jump ==1 && goLeft == 1) {
    mFrame = -4;
  }
  if (goRight == 0 && goLeft == 0) {
    if (mFrame >= 2) {
      mFrame = 1;
    }
    if (mFrame <= -2) {
      mFrame = -1;
    }
  }
  if (mFrame == 1) {
    image(H1, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == 2) {
    image(H2, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == 3) {
    image(H3, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == 4) {
    image(H4, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -1) {
    image(H5, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -2) {
    image(H6, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -3) {
    image(H7, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -4) {
    image(H8, gx - 3 - cameraX, gy-29, 62, 56);
  }
}

void oliviaDraw() {
  if (jump ==1 && goRight == 1) {
    mFrame = 4;
  }
  if (jump ==1 && goLeft == 1) {
    mFrame = -4;
  }
  if (goRight == 0 && goLeft == 0) {
    if (mFrame >= 2) {
      mFrame = 1;
    }
    if (mFrame <= -2) {
      mFrame = -1;
    }
  }
  if (mFrame == 1) {
    image(G1, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == 2) {
    image(G2, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == 3) {
    image(G3, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == 4) {
    image(G4, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -1) {
    image(G5, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -2) {
    image(G6, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -3) {
    image(G7, gx - 3 - cameraX, gy-29, 62, 56);
  }
  if (mFrame == -4) {
    image(G8, gx - 3 - cameraX, gy-29, 62, 56);
  }
}