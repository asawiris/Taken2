void ReplayAnimation() {

  fill(0, rPlayAlpha);
  rect(-5, -5, width+10, height+10);

  if (initiate == 1) {
    rPlayAlpha+=5;
    if (rPlayAlpha>=245) {//fully black
      rPlayAlpha =  245;
      FADE = 1;
    }
  }
  if (FADE == 1) {
    cameraX=0;
    level=1;
    phrase0 = phrase1;
    phraseVar = 0;
    NEW=0;
    lifeVAR=3;
    pause=0;
    gx=50;
    gy=350;
    endStory=1;
    talkVar = 1;// 1 // 2// 3
    nm=0;
    nm2=0;
    time=30;
    HTPDone=0;
    FADE = 2;
  }
  if (FADE == 2) {
    rPlayAlpha-=10;
    if (rPlayAlpha <=0) {
      rPlayAlpha = 0;
      FADE =3;
    }
    if (FADE == 3) {
      initiate=0;
    }
  }
}