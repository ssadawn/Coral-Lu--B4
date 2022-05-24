class catcher {
  int x, y, speed;
  PImage photo;

  catcher(int x, int y) {
    this.x = x;
    this.y = y;
    speed = 5;
    photo = loadImage("catcher.png");
  }

  void display() {
    imageMode(CENTER);
    image(photo, x, y);
  }

  void move(char dir) {
    if (dir == 'a') {
      x = x-5;
    } else if (dir == 'd') {
      x = x+5;
    }
  }
  void keyPressed() {
    if (key == CODED) {
    } else if (keyCode == RIGHT) {
      // x = x + 10;
    } else if (keyCode == LEFT) {
      // x = x - 10;}
    }
  }
  }
