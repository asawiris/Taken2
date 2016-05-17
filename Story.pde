int storyX=220, storyY=350;

String phrase1 = "Hey how are\nyou!How's\nyour day\nbeen?";
String phrase2 = "Pretty good"; 
String phrase3 = "sdfsafdsfPretty good"; 
String phrase4 = "Presdfdsagfdtty good"; 
String phrase5 = "204ot02ogo0fgd0ofg0g\ny good"; 
int talkVar = 1; // 1 // 2// 3

String phrase0 = phrase1;

float phraseVar = 0;










void story() {
  background(#FFFFFF);
  image(OSITTING, storyX, storyY, 150, 150);
  image(TABLE, storyX+74, storyY-10, 150, 150);
  image(HSITTING, storyX+150, storyY, 150, 150);







  if (talkVar == 1 || talkVar == 3 || talkVar == 5) {
    image(SBUB, 260, 260, 200, 200);
  }

  if (talkVar == 2 || talkVar == 4 || talkVar == 6) {
    image(SBUB2, 280, 260, 200, 200);
  }

  phraseVar+=1;
  if (phraseVar>= phrase0.length()) {
    phraseVar =phrase0.length();

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
    }
  }



  fill(0);
  textSize(20);
  textFont(font, 14);

  if (talkVar == 1 || talkVar == 3 || talkVar == 5) {
    text(phrase0.substring(0, (int)phraseVar), 190, 190);
  }

  if (talkVar == 2 || talkVar == 4 || talkVar == 6) {
    text(phrase0.substring(0, (int)phraseVar), 190, 190);
  }
}