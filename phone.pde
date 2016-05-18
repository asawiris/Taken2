int dismiss=0, appear=0;

class PHONE {
  int x, y;
  PHONE(int _x, int _y) {
    x=_x;
    y=_y;
  }
  void update() {
    y-=5;
    if (y<=300) {
      y=300;
    }
    fill(#C6C6C6);
    rect(x, y, 100, 160, 12, 12, 12, 12);
    fill(#000000);
    rect(x+5, y+5, 90, 140, 12, 12, 12, 12);
    if(level==1){
      textFont(font,9);
      fill(#ffffff);
     text("Meet me at\nthe deli",x+7,y+25); 
    }
    
    if (appear == 0 && mousePressed) {
      dismiss=1;
    }
    if(dismiss==1){
      y+=10;
      if (y>=405) {
        y=405;
      }
    }
    
    
    /*
    if(dismiss==1 && mousePressed){
      appear=1;
    }
    if(appear==1){
      y-=20;
      if (y<=300) {
      y=300;
      
    }
    }
     */
    
  }
}