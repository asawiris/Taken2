int checkoutX=170, checkoutY=350, speedBoostX=170, speedBoostY=150, healthBoostX = 320, healthBoostY = 150;

void BUYING() {
  background(#CE02CB);
text(money,50,50);
fill(255);
println(speed, " ", lifeVAR);
//rect(speedBoostX,speedBoostY,90,90);
  
  image(H2,speedBoostX+20,speedBoostY+35);
  image(G2,speedBoostX+70,speedBoostY+35 );
   fill(255);
   textSize(12);
  text("+1 Speed",speedBoostX-3,speedBoostY+80);
  fill(#00ff00);
  text("$3",speedBoostX+38,speedBoostY+100);
  //fill(255);
  //rect(healthBoostX,healthBoostY,107,80);
  
  image(HEART,healthBoostX+55,healthBoostY+30,50,50);
  textSize(12);
  fill(255);
  text("+1 Health",healthBoostX,healthBoostY+80);
  fill(#00ff00);
  text("$3",healthBoostX+40,healthBoostY+100);
  


  //fill(0);
 // rect (checkoutX, checkoutY, 270, 20);

  textSize(15);
  fill(255);
  text("Checkout and Leave", checkoutX, checkoutY+18);
}