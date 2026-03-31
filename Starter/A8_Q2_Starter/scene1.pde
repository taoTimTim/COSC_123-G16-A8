//REQ: put any variables required for your A6_Q1 animation 
int thetaIncrements = 1000;
float scale = 100.0;
float a, b, m1, m2, n1, n2, n3;
float shapeShift = 0;

void scene1() {
  A6_Q1();
  //REQ: draw the HOME button here using the Button's display() function
  b1.display();
}

void A6_Q1(){
  //REQ - Copy your code from Q1 in assignment A6 here (modify the code as needed, e.g. to fit the current sketch size)
  
  translate(width/2, height/2);
  
  strokeWeight(5);
  strokeCap(ROUND);

  a = 1;
  b = 1;
  m1 = 2;
  m2 = 10;
  n1 = 1.5;
  n2 = 1;
  n3 = 1;
  supershape(a, b, m1, m2, n1, n2, n3);

  a = 1;
  b = 1;
  m1 = 88 + shapeShift;
  m2 = 64 + shapeShift;
  n1 = -20 + shapeShift * 0.15;
  n2 = 1;
  n3 = 1;
  supershape(a, b, m1, m2, n1, n2, n3);
}

void supershape(float a, float b, float m1, float m2, float n1, float n2, float n3) {
  float previousX = 0, previousY = 0;
  float x, y;
  float hueSpeed = frameCount * 2;

  for (int i = 0; i <= thetaIncrements; i++) {
    float theta = ((2 * PI) / thetaIncrements) * i;

    float hue = ( i * 255.0 / thetaIncrements + hueSpeed) % 255;
    stroke(hue, 255, 255);

    float r = pow(
      pow(abs(cos((m1 * theta) / 4) / a), n2) +
      pow(abs(cos((m2 * theta) / 4) / b), n3),
      -(1 / n1)
    );

    x = r * cos(theta) * scale;
    y = r * sin(theta) * scale;

    if (i != 0) line(x, y, previousX, previousY);

    previousX = x;
    previousY = y;
  }
}
