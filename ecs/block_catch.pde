int score;
catcher ei;
blocks blockey;

void setup() {
  size(600, 500);
  score = 0 ;
  ei = new catcher(300, 375);
  blockey = new blocks(200, 50);
}

void draw() {
  background (#B2BAE8);
  drawBG();
  scorePanel();
  ei.display();
  blockey.show();
  blockey.fall();
  fill(#A8E0D5);
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      ei.move('a');
    } else if (key == 'd' || key == 'D') {
      ei.move('d');
    }
  }
  if (dist(ei.x, ei.y, blockey.x, blockey.y)<50) {
    ei.x = int(random(375,width));
    ei.y = 375;
    blockey.x = 300;
    blockey.y = int(random(width));
  }
  if (score>4000) {
    fill(0);
    rectMode(CORNER);
    rect(0,0,width,height);
    text("Wow good job", 300,375);
    text("Score:" + score, 350, 380);
  }
  if (ei.y<80) {
    score = score + 1000;
    ei.x = 300;
    ei.y = 700;
  }
}

void drawBG() {
  rect(0, 440, 600, 499);
}

void scorePanel () {
  fill(#E7CCFA);
  rect(0, 0, 150, 50);
  fill(255);
  text("Score:" + score, 5, 15);
}
