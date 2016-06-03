int showb=0, cx, cy=350, cvy, LAKITUalpha=130, bState = 0, ground = 335;
float gravity=.8, h = 30, lax=1000, lay = 50, bx, by, bvx, bvy=3, LAKITUct, LAKITUtime;
color bc=#FF0A0A;
//0 ball is inside cloud
//1 ball is ejected

void Lakitu() {
  lax = lerp(lax, gx, .1 );
  if (bState == 0) {
    alpha = 150;
    h = 30;
    bx = lax;
    by = lay;
    if (random(100) < 100) {
      bState = 1;
      bvx = - random(3);
      bvy = - 12;
    }
  }
  if (bState == 1) {
    bvy += .5;
    bx += bvx;
    by += bvy;
    if (by>ground) {
      by = ground;
      bvy = 0;
      bState = 2;
      bvx = 0;
    }
  }
  if (bState==2) {
    LAKITUct+=1;
    by=by+2*sin(LAKITUct);
    bx=bx+2*cos(LAKITUct);
    LAKITUtime+=.033;
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
    text("BOOM!", bx-30-cameraX, by-50);
  }
  if(bState == 3 && dist(gx,gy,bx,by)<100){
   lifeVAR-=2; 
  }
  println(lifeVAR);
  image(HELI, lax-cameraX, lay);
  fill(#000405);
  fill(bc, alpha);
  ellipse(bx-cameraX, by, h, h);
}