int showb=0;

int cx, cy=350, cvy;
float gravity=.8;

float h = 30;
color bc=#FF0A0A;
int LAKITUalpha=130;
float lax=400, lay = 50;
float bx, by, bvx, bvy=3;
int bState = 0;
int ground = 350;

//0 ball is inside cloud
//1 ball is ejected
float LAKITUtime;
float LAKITUct;


void Lakitu() {

  lax = lerp(lax-cameraX, cx, .1 );
  //lax += .1*(cx-lax);
  if (bState == 0) {
    alpha=150;
    h=30;
    //bh=30;
    bx = lax-cameraX;
    by = lay-cameraX;
    //gx = lax-cameraX;
    //gy = lay;
    if (random(100) < 100) {
      bState = 1;
      bvx = - random(3);
      bvy = -12;
    }
  }


  if (bState == 1) {
    bvy+=.5;
    bx+=bvx;
    by+=bvy;
    if (by>ground) {
      by=ground;
      bvy=0;
      bState=2;
      bvx=0;
    }
   }


  //text(time,50,50);
  if (bState==2) {

    ct+=1;
    by=by+2*sin(ct);
    bx=bx+2*cos(ct);

    time+=.033;
    alpha++;
    bvx++;

    if (bvx==90) {
      bState=3;
    }
  }

  if (bState==3) {
    h *=1.5;
    if (h > 200) {

      bState=0;
    }


    text("BOOM!", bx-30, by-50);
  }


  fill(255);
  ellipse(lax-cameraX, lay, 50, 50);
  ellipse(lax+10-cameraX, lay+6, 50, 50);
  ellipse(lax-10-cameraX, lay+10, 50, 50);
  ellipse(lax+20-cameraX, lay+9, 50, 50);
  fill(#000405);
  //rect(-1, ground+18, 801, 50);


  fill(bc, alpha);
  ellipse(bx, by, h, h);
}