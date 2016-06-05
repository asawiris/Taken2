int checkoutX=170, checkoutY=350, speedBoostX=170, speedBoostY=150, healthBoostX = 320, healthBoostY = 150, speedRect,healthRect;

void BUYING() {
  background(#CE02CB);
  fill(0);
  textSize(12);
  text("Your Money:$",32,52);
   text(money, 177, 52);
  fill(255);
  textSize(12);
  text("Your Money:$",30,50);
  
  text(money, 175, 50);
  fill(255);
  println(speed, " ", lifeVAR);
  //rect(speedBoostX,speedBoostY,90,90);

  if (level == 8 && money>=3 && mouseX>speedBoostX && mouseX<speedBoostX+90 && mouseY>speedBoostY && mouseY<speedBoostY+90)
    speedRect=1;
  else
    speedRect=0;  
  if (level == 8 && money>=3 && mouseX>healthBoostX && mouseX<healthBoostX+107 && mouseY>healthBoostY && mouseY<healthBoostY+80)
    healthRect=1;
  else
    healthRect=0;


  if(speedRect==1){
    fill(#FFF93B);
    rect(speedBoostX-5,speedBoostY,100,110,12,12,12,12);
  }
  if(healthRect==1){
    fill(#FFF93B);
    rect(healthBoostX-5,healthBoostY,117,110,12,12,12,12);
  }
  image(H2, speedBoostX+20, speedBoostY+35);
  image(G2, speedBoostX+70, speedBoostY+35 );
  
  textSize(12);
   fill(0);
  text("+1 Speed", speedBoostX-1, speedBoostY+82);
  fill(255);
  text("+1 Speed", speedBoostX-3, speedBoostY+80);
 
  fill(0);
  text("$3", speedBoostX+37, speedBoostY+102);
 
  fill(#00ff00);
  text("$3", speedBoostX+35, speedBoostY+100);
  //fill(255);
  //rect(healthBoostX,healthBoostY,107,80);

  image(HEART, healthBoostX+55, healthBoostY+30, 50, 50);
  textSize(12);
  fill(0);
  text("+1 Health", healthBoostX+2, healthBoostY+82);
  fill(255);
  text("+1 Health", healthBoostX, healthBoostY+80);
  fill(0);
  text("$3", healthBoostX+42, healthBoostY+102);
  fill(#00ff00);
  text("$3", healthBoostX+40, healthBoostY+100);
  



  //fill(0);
  // rect (checkoutX, checkoutY, 270, 20);

  textSize(15);
   fill(0);
  text("Checkout and Leave", checkoutX+2, checkoutY+20);
  fill(255);
  text("Checkout and Leave", checkoutX, checkoutY+18);
}