/*
PROBLEMS
- bottom part of gif is being weird
- just crashes now with new gif, something wrong with gameoverGif[g] = loadImage("frame_" + g + "_delay-0.07s.gif"); line... or maybe it doesn't like that there are 2 GIFs??

TASKS
- change if not matching to be 100% sure it won't match
- add music
- add gif to the game over screen
- tie together the theme?
- change mode to intro screen instead of game after losing?
- change "yes" and "no" to "true" and "false"?
 */



//Charlotte Jacques
//Block 3
//Colour Game: if the colour matches the word, press "yes!" if not, press "no!" when you get a question wrong, you lose the game
//intro gif link: https://giphy.com/gifs/relax-meditate-ripples-xT1XGZndeDLlWvSDaU
//gameover gif link: https://giphy.com/gifs/games-arcade-de7YjnUgKq5Ta

//mode variables
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 3;
int mode = INTRO;

//colour variables
color red = #FF0000;
color orange = #FF6F00;
color yellow = #FEFF00;
color green = #3FFF00;
color blue = #002CFF;
color purple = #6D00FF;
color pink = #FF00E2;

//text variables
PFont beatword; 
int titleSize = 15;
int titleAngle = 0;

//intro gif variables
PImage[] introGif;
int introFrame = 0;
int introGifLength = 30;

//game background variables
PImage greenOmbre, redOmbre;

//game variables
String[] words;
color[] colours;
int wordNumbers, colourNumbers;

//timer variable
int wordLocation;

//probability variables 
int doesItMatch; //random number - if it is 0, it matches; if it is 1, it doesn't match
int matchNumber; //for when they match, decides which colour it should be

//score variables
int score = 0;
int highScore = 0;

//gameover gif variables
PImage[] gameoverGif;
int gameoverFrame = 0;
int gameoverGifLength = 7;

void setup() {
  size(800, 800);

  //font variables
  beatword = createFont("BeatWordDemo-nRL20.ttf", 50);
  textFont(beatword);
  textAlign(CENTER, CENTER);

  //intro gif variables
  introGif = new PImage[introGifLength];
  int i = 0;
  while (i < introGifLength) {
    introGif[i] = loadImage("frame_" + i + "_delay-0.05s.gif");
    i++;
  }
  //game background variables
  greenOmbre= loadImage("green ombre.png");
  redOmbre = loadImage("red ombre.jpeg");

  //game variables
  words = new String[7];
  words[0] = "RED";
  words[1] = "ORANGE";
  words[2] = "YELLOW";
  words[3] = "GREEN";
  words[4] = "BLUE";
  words[5] = "PURPLE";
  words[6] = "PINK";
  colours = new color[7];
  colours[0] = #FF0000;
  colours[1] = #FF6F00;
  colours[2] = #FEFF00;
  colours[3] = #3FFF00;
  colours[4] = #002CFF;
  colours[5] = #6D00FF;
  colours[6] = #FF00E2;
  
  //gameover gif variables
  //int g = 0;
  //while(g < gameoverGifLength) {
  //  gameoverGif[g] = loadImage("frame_" + g + "_delay-0.07s.gif");
  //  g++; 
  //}
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error - mode = " + mode);
  }
}
