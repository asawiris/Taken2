int dismiss=0, appear=1, pvy=5, comeUP, goDown;

class PHONE {
  int x, y;
  PHONE(int _x, int _y) {
    x=_x;
    y=_y;
  }
  void update() {
    if (dismiss == 0 && appear==1 && mousePressed) {
      comeUP=1;
    }
    if (comeUP==1) {
      y-=pvy;
      if (y<=250) {
        y=250;
        dismiss=1;
        pvy=0;
        appear=0;
        comeUP=2;
      }
    }
    fill(#C6C6C6);
    rect(x, y, 110, 160, 12, 12, 12, 12);
    fill(#000000);
    rect(x+5, y+5, 100, 140, 12, 12, 12, 12);
    if (level==1) {
      textFont(font, 9);
      fill(#ffffff);
      if (cSelect==1) {
        text("New Message\nfrom\nHarry:", x+7, y+25) ;
      }
      if (cSelect==0) {
        text("New Message\nfrom\nOlivia:", x+7, y+35);
      }
      text("URGENT\nMeet me at\nthe deli!", x+7, y+80);
    }
    if (level == 3) {
      textFont(font, 9);
      fill(#ffffff);
      text("New\nObjective:\n\nFind your\nson!", x+9, y+25);
    }
    if (dismiss==1 && appear == 0 && mousePressed) {
      goDown=1;
    }
    if (goDown==1) {
      pvy=5;
      y+=pvy;
      if (y>=410) {
        y=410;
        dismiss=0;
        appear=1;
        goDown=2;
      }
    }
  }
}