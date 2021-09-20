void intro() {

  //gif
  image(introGif[introFrame], 0, 0, width, height);
  introFrame++;
  if (introFrame >= 30) introFrame = 0;

  //title
  pushMatrix();
  fill(0);
  textSize(titleSize);
  titleSize++;
  translate(width/2, height/2);
  rotate(radians(titleAngle));
  text("COLOUR MATCH", 0, 0);
  popMatrix();
  titleAngle+=5;
  if (titleAngle >= 360) {
    titleAngle = 360;
    titleSize = 87;
    textSize(25);
    text("click anywhere to begin", width/2, 600);
  }
  //if(titleSize > 175) titleSize = 15;
}

void introClicks() {
  mode = GAME;
  randomize();
}
