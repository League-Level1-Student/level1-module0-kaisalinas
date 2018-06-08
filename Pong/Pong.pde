boolean gameOver = false;
PImage backgroundImage;
import ddf.minim.*;
Minim minim;
AudioSample sound;
int bobbx = 500;
int bobbspeed = 10;
int bobby = 200;
int bobbspeedy = 7;
int score = 0;
void setup() {

  size(1000, 1000);
  backgroundImage = loadImage("Pong.jpg");
  backgroundImage.resize(width, height);
}
void draw() {
  background(backgroundImage);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  ellipse(bobbx, bobby, 50, 50);
  if (bobbx>1000||bobbx<0) {
    bobbspeed = -bobbspeed;
  }
  bobbx+=bobbspeed;
  bobby+=bobbspeedy;
  if (bobby<0) {
    bobbspeedy = -bobbspeedy;
    //sound.trigger();
  }
  rect(mouseX, 900, 150, 15);

  if (intersects(bobbx, bobby, mouseX, 900, 150)) {
    bobbspeedy = -bobbspeedy;  
    score+=1;
  }
  if (gameOver) {
    text("Milan Stinks", 300, 500);
    text("Your score is " + score, 150, 600);
  }
  textSize(100);
  if (bobby >height) {
    gameOver = true;
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength && ballY < paddleY + 15)
    return true;
  else 
  return false;
}
