void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void randomize() {
  doesItMatch = int(random(0, 2));
  if (doesItMatch == 0) {
    matchNumber = int(random(0, 7));
    wordNumbers = colourNumbers = matchNumber;
  } else if (doesItMatch == 1) {
    wordNumbers = int(random(0, 7));
    colourNumbers = int(random(0, 7));
  }
  
  
  wordLocation = -150;
}

void reset() {
}
