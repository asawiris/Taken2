int mTickRIGHT = 0;
int mFrameRIGHT = 1;

int mTickLEFT = 0;
int mFrameLEFT = 1;

int mFrame = 0;




void sprite() {
  PImage whole = loadImage("data/COMPLETERIGHT.png");
  PImage whole2 = loadImage("data/COMPLETELEFT.png");


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

  //standing
}




void harryAnimation() {


  if (goRight == 1 ) {

    //if (mFrame >1) {
//mFrame=1;
  //  }
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
//if(mFrame <-1){
 //mFrame=-1; 
//}
    if (mFrame > 0) {
      mFrame *=-1;
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



  println(mFrameRIGHT + "  " + goRight + "  " + goLeft);
}


void harryDraw() {

  if (jump ==1 ) {
    mFrame = 4;
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

  if (jump ==1 ) {
    mFrame = 4;
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