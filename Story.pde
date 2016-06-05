int storyX=220, storyY=350, skipX=270, skipY=100, endStory=1, NEW, talkVar = 1;// 1 // 2// 3
float phraseVar = 0;

String phrase1 = "Hey how are\nyou!How's\nyour day\nbeen?";
String phrase2 = "Not so\ngreat. We\nhave an\nissue."; 
String phrase3 = "What do you\nmean???"; 
String phrase4 = "Someone\nbroke into\nJoey's\nDaycare!"; 
String phrase5 = "Oh no! We\nhave to get\nto him!"; 
String phrase6 = "I did it\nlast time.\nIt's your\nturn.";
String phrase7 = "";
String phrase0 = phrase1;

void story() {
  background(#FFFFFF);
  image(back, 300, 200);
  image(TABLE, storyX+74, storyY-10, 150, 150);
  image(TABLE, storyX-220, storyY-10, 150, 150);
  image(TABLE, storyX+375, storyY-10, 150, 150);
  light(280, -20);
  if (cSelect==0) {
    image(HSITTING, storyX+150, storyY, 150, 150);
    image(OSITTING, storyX, storyY, 150, 150);
  }
  if (cSelect==1) {
    image(HSl, storyX, storyY, 150, 150);
    image(OSL, storyX+150, storyY, 150, 150);
  }
  image(CHAIR, storyX+320, storyY-25, 150, 150);
  image(CHAIRLEFT, storyX-165, storyY-25, 150, 150);
  if (talkVar == 1 || talkVar == 3 || talkVar == 5) {
    image(SBUB, 260, 260, 200, 200);
  }
  if (talkVar == 2 || talkVar == 4 || talkVar == 6) {
    image(SBUB2, 330, 260, 200, 200);
  }
  fill(0);
  rect(skipX, skipY, 10, 40);
  triangle(skipX+15, skipY, skipX+40, skipY+20, skipX+15, skipY+40);
  textSize(12);
  text("Skip", skipX-4, skipY+55);
  phraseVar+=1;
  if (phraseVar>= phrase0.length()) {
    phraseVar = phrase0.length();
    if (mousePressed) {
      phraseVar = 0;
      talkVar++;
      if (talkVar == 2) {
        phrase0 = phrase2;
      }
      if (talkVar == 3) {
        phrase0 = phrase3;
      }
      if (talkVar == 4) {
        phrase0 = phrase4;
      }
      if (talkVar == 5) {
        phrase0 = phrase5;
      }
      if (talkVar == 6) {
        phrase0=phrase6;
      }
      if (talkVar == 7 && fadeC==0) {
        nextLevel = 1;
        endStory=0;
        NEW=1;
        fadeC=1;
      }
    }
  }
  fill(0);
  textSize(20);
  textFont(font, 14);
  if (talkVar == 1 || talkVar == 3 || talkVar == 5) {
    text(phrase0.substring(0, (int)phraseVar), 190, 190);
  }
  if (talkVar == 2 || talkVar == 4 || talkVar == 6) {
    text(phrase0.substring(0, (int)phraseVar), 245, 190);
  }
}