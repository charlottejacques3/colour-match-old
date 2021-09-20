void gameover() {
  background(255);
  
  //gif
  //image(gameoverGif[gameoverFrame], 0, 0, width, height);
  //gameoverFrame++;
  if(gameoverFrame >= 7) gameoverFrame = 0;
  
  //text
  fill(0);
  textSize(125);
  text("YOU LOST!", width/2, 300);
  textSize(40);
  text("score: " + score, width/2, 450);
  text("high score: " + highScore, width/2, 500);
  text("click to try again", width/2, 600);
  
  if(score > highScore) highScore = score;
}

void gameoverClicks() {
  mode = GAME;
  score = 0;
  randomize();
}
