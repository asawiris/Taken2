int cSelect;//0 for boy....1 for girl
int startX = 300, startY = 185;
int harryX = 156, harryY = 156, jadeX = 355, jadeY = 156;
int harryRect=0, jadeRect=0, alpha, fade=0;
int chosen=0;
void chooseCharacter() {
  background(#2AC0F5);
  image(CHOOSE, 300, 200);


  if (chosen==0) {
    if (mouseX>harryX && mouseX<harryX+82 && mouseY>harryY && mouseY<harryY+175)     
      harryRect=1;
      else
      harryRect=0;  
    if (mouseX>jadeX && mouseX<jadeX+ 94 && mouseY>jadeY && mouseY<jadeY+175) 
      jadeRect=1;
    else
      jadeRect=0;
  }
  if (fade==1) {
    alpha+=10;
  }
  if (jadeRect==1) {
    fill(#FFF93B);
    rect(jadeX-5, jadeY-5, 104, 185, 12, 12, 12, 12);
  }
  if (harryRect==1) {
    fill(#FFF93B);
    rect(harryX-5, harryY-5, 92, 185, 12, 12, 12, 12);
  }

  if (alpha>=255) {
    page=1;
  }
  image(GIRL, 405, 250, 200, 200);
  image(BOY, 200, 250, 200, 200);
  fill(#000000, alpha);
  rect(0, 0, 600, 400);
}