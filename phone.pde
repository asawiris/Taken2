int dismiss=0, appear=1, pvy=5, comeUP, goDown, objective;
int pAppear = 0;
//1 is go up
//2 is peak
//3 go down
class PHONE {
  float x, y;
  PHONE(int _x, int _y) {
    x=_x;
    y=_y;
  }
  void update() {
    if (sp && pAppear == 0) {
      pAppear = 1;
      // sp  = false;
    }
    if (pAppear == 1) {
      y=lerp(y, 250, .15);
      if (y<=251) {
        y=251;
        pAppear = 2;
      }
    }
    if (sp && pAppear == 2) {
      pAppear = 3;
    }
    if (pAppear == 3) {
      y=lerp(y, 410, .2);
      if (y>=409) {
        y= 409;
        pAppear = 0;
      }
    }
    fill(#C6C6C6);
    rect(x, y, 110, 160, 12, 12, 12, 12);
    fill(#000000);
    rect(x+5, y+5, 100, 140, 12, 12, 12, 12);
    if (level==1 && NEW==1) {
      textFont(font, 12);
      
      if (objective==1){//get to daycare
        fill(0);
        text("New Objective!", x-18.5, y-13.5);
        fill(#FFFF00);
        text("New Objective!", x-20, y-15);
      }
    }
    if (level==1 && NEW==0 && pAppear == 1) {
      textFont(font, 12);
      fill(0);
      text("New Message!", x-13, y-13.5);
      fill(#FFFF00);
      text("New Message!", x-15, y-15);
      
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
    if (level == 3 || NEW==1) {
      textFont(font, 9);
      fill(#ffffff);
      text("New\nObjective:\n\nGet to\nthe daycare\ncenter!", x+9, y+25);
    }
  }
}