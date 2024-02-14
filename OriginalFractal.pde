int f = 150; 
int g = 2440; 

void setup() {
  size(800, 700);
  frameRate(20);
}

void draw() {
  background(0);

  fractal(5, g, 10, 10, 200);
}

void fractal(double r, double dRadians, double w, double h, int m) {
  if (m <= 50) {
    double x = r * Math.cos(dRadians);
    double y = r * Math.sin(dRadians);
    if (f <= 50) {
      f++;
    } else {
      f--;
    }
    fill(255);
    ellipse(340 + (int)x, 250 + (int)y, (int)w, (int)h);
  } else {
    noFill();
    double x = r * Math.cos(dRadians);
    double y = r * Math.sin(dRadians);

    fill(100, 10, 240, f);
    ellipse(400 + (int)x, 350 + (int)y, (int)w * 2, (int)h * 2);

    fractal(r + 5, dRadians - 9, w + 2, h + 2, m - 1);
  }

  g += 1;
}
