Mountain[] mountains;
Snowball[] snowballs;
Snowman snowman;
Lodge lodge;

void setup() {
  size(600, 600);
  background(149, 165, 232);

  // Initialize objects
  mountains = new Mountain[] {
    new Mountain(0, 600, 175, 350, 350, 600),
    new Mountain(350, 600, 500, 250, 650, 600),
    new Mountain(150, 600, 350, 450, 500, 600)
  };

  snowballs = new Snowball[] {
    new Snowball(50, 50, 8),
    new Snowball(200, 80, 8),
    new Snowball(400, 150, 8),
    new Snowball(300, 400, 8),
    new Snowball(100, 300, 8),
    new Snowball(550, 30, 8)
  };

  snowman = new Snowman(175, 575);
  lodge = new Lodge(450, 560);
}

void draw() {
  background(149, 165, 232);

  for (Mountain m : mountains) {
    m.draw();
  }

  for (Snowball s : snowballs) {
    s.draw();
  }

  snowman.draw();
  lodge.draw();
}

class Mountain {
  float x1, y1, x2, y2, x3, y3;

  Mountain(float x1, float y1, float x2, float y2, float x3, float y3) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
  }

  void draw() {
    stroke(89, 68, 74);
    fill(89, 68, 74);
    triangle(x1, y1, x2, y2, x3, y3);
  }
}

class Snowman {
  float x, y;

  Snowman(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void draw() {
    stroke(193, 198, 219);
    fill(193, 198, 219);

    circle(x, y, 50);        
    circle(x, y - 40, 30);    
    circle(x, y - 65, 20);    

    // Nose
    stroke(212, 155, 51);
    fill(212, 155, 51);
    triangle(x, y - 66, x, y - 64, x + 15, y - 65);

    // Arms
    stroke(18, 17, 16);
    line(x - 15, y - 40, x - 35, y - 65);
    line(x + 15, y - 40, x + 35, y - 65);

    // Hat
    fill(18, 17, 17);
    rect(x - 10, y - 80, 20, 5);   
    rect(x - 8, y - 85, 16, 5);   
  }
}

class Lodge {
  float x, y;

  Lodge(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void draw() {
    stroke(64, 55, 57);
    fill(64, 55, 57);
    rect(x, y, 60, 40);           // base
    rect(x + 50, y - 20, 10, 20); // chimney

    fill(237, 230, 223);
    rect(x + 5, y + 20, 10, 20);  // door

    fill(219, 174, 90);
    rect(x + 35, y + 15, 10, 10); // window

    fill(247, 246, 245);
    circle(x + 55, y - 30, 5);
    circle(x + 55, y - 37, 5);
    circle(x + 55, y - 44, 6);    // smoke
  }
}
