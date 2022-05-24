class blocks {
  int x, y, speed;
  PImage photo;
  int yspeed = int(random(1, 5));

  blocks(int x, int y) {
    this.x = int(random(width));
    this.y = y;
    speed = int(random(2, 10));
    photo = loadImage("blocks.png");
  }

  void show () {
    imageMode(CENTER);
    image(photo, x, y);
  }

  void fall() {
    y = y + yspeed;
    //makes the block loop
    //if (y>height) {
    // y = 0;
  }
}
