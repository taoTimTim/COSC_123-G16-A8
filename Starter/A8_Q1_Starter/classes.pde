//REQ: create a Hero class with the specs mentioned in the assignment document.
class Hero {
  final float bodyHeight = 100;
  final float headRadius = 50;
  
  float x, y;
  float scale;
  float speedX, speedY;
  color torsoColor, beltColor;
  
  final color torsoStrokeColor = color(70);
  final color skinStrokeColor = color(230, 180, 100);
  final color eyesStrokeColor = color(0);
  
  Hero() {
    x = width / 2;
    y = height / 2;
    scale = 1;
    speedX = 1;
    speedY = 0;
    torsoColor = color(19, 0, 205);
    beltColor = color(0, 255, 255);
  }
  
  Hero(float x1, float y1, float scale1) {
    x = x1;
    y = y1;
    scale = scale1;
    
    speedX = 1;
    speedY = 0;
    torsoColor = color(19, 0, 205);
    beltColor = color(0, 255, 255);
  }
  
  Hero(float x1, float y1, float scale1, float sx, float sy, color torsoClr, color beltClr) {
    x = x1;
    y = y1;
    scale = scale1;
    speedX = sx;
    speedY = sy;
    torsoColor = torsoClr;
    beltColor = beltClr;
  }
  
  void move() {
    x += speedX;
    if (x < scale) {
      x = width - scale;
    } else if (x > (width - scale)) {
      x = scale;
    }
    
    y += speedY;
    if (y < scale) {
      y = height - scale;
    } else if (y > (height - scale)) {
      y = scale;
    }
  }
  
  void display() {
    pushMatrix();
    
    translate(x, y);
    scale(scale);
    
    fill(torsoColor);
    stroke(torsoStrokeColor);
    triangle(0,
             0, 
             -(bodyHeight / 2),
             bodyHeight,
             (bodyHeight / 2),
             bodyHeight);
             
    fill(255, 230, 200);
    stroke(skinStrokeColor);
    ellipse(0,
            -headRadius,
            headRadius * 2,
            headRadius * 2);

    //left arm
    strokeWeight(7);
    line(-15,
         20,
         -50,
         50);
    line(-50, 
         50, 
         -15,
         75);

    //right arm
    line(15,
         20,
         50,
         50);
    line(50, 
         50, 
         15,
         75);

    //belt
    stroke(beltColor);
    strokeWeight(6);
    strokeCap(ROUND);
    line(-45,
         85,
         45,
         85);

    //buckle
    stroke(torsoStrokeColor);
    strokeWeight(2);
    fill(beltColor);
    triangle(0,
             75,
             -8,
             90,
             8,
             90);

    //legs
    strokeWeight(7);
    line(-40,
         bodyHeight,
         -15, 
         (bodyHeight * 2 - 30));
    line(40,
         bodyHeight,
         15,
         (bodyHeight * 2 - 30));

    //eyes
    stroke(eyesStrokeColor);
    strokeWeight(3);
    fill(255);
    triangle(-20,
             -75,
             -30,
             -55,
             -10,
             -55);
    triangle(20,
             -75,
             10,
             -55,
             30,
             -55);

    //pupils
    strokeWeight(7);
    point(-20, -60);
    point(20, -60);
    
    //nose
    strokeWeight(3);
    line(0, -50, 0, -40);
    line(0, -40, 5, -40);

    //smile
    noFill();
    bezier(-25,
           -30,
           -10,
           -5,
           10,
           -5,
           25,
           -30);

    //logo
    fill(beltColor);
    triangle(0,
             25,
             -15,
             55,
             15,
             55);
    blendMode(MULTIPLY);
    fill(100);
    textSize(22);
    textAlign(CENTER, CENTER);
    text("δ", -1, 45);
    blendMode(BLEND);

    //hair
    stroke(torsoColor);
    int hairWaveCoefficient = 10;
    int hairSegmentHeight = 20;
    int xStart1 = -45;
    int yStart1 = -85;
    int xEnd1 = xStart1 - (hairSegmentHeight / 2);
    int yEnd1 = yStart1 - hairSegmentHeight;
    int xEnd2 = xEnd1 - (hairSegmentHeight / 2);
    int yEnd2 = yEnd1 - hairSegmentHeight;
    int xEnd3 = xEnd2 - (hairSegmentHeight / 2);
    int yEnd3 = yEnd2 - hairSegmentHeight;
    noFill();
    strokeWeight(2);
    bezier(
    /* x1 */ xStart1,
    /* y1 */ yStart1,
    /* cx1 */ xStart1 - hairWaveCoefficient,
    /* cy1 */ yStart1 - (hairWaveCoefficient / 2),
    /* cx2 */ xEnd1 + hairWaveCoefficient,
    /* cy2 */ yEnd1 + (hairWaveCoefficient / 2),
    /* x2 */ xEnd1,
    /* y2 */ yEnd1);
    bezier(
    /* x1 */ xEnd1,
    /* y1 */ yEnd1,
    /* cx1 */ xEnd1 - hairWaveCoefficient,
    /* cy1 */ yEnd1 - (hairWaveCoefficient / 2),
    /* cx2 */ xEnd2 + hairWaveCoefficient,
    /* cy2 */ yEnd2 + (hairWaveCoefficient / 2),
    /* x2 */ xEnd2,
    /* y2 */ yEnd2);
    bezier(
    /* x1 */ xEnd2,
    /* y1 */ yEnd2,
    /* cx1 */ xEnd2 - hairWaveCoefficient,
    /* cy1 */ yEnd2 - (hairWaveCoefficient / 2),
    /* cx2 */ xEnd3 + hairWaveCoefficient,
    /* cy2 */ yEnd3 + (hairWaveCoefficient / 2),
    /* x2 */ xEnd3,
    /* y2 */ yEnd3);
    strokeWeight(10);
    point(xEnd2 - (hairSegmentHeight / 2) - 3,
    yEnd2 - hairSegmentHeight - 3);
    
    strokeWeight(2);
    int xStart1R = 45;
    int yStart1R = -85;
    int xEnd1R = xStart1R + (hairSegmentHeight / 2);
    int yEnd1R = yStart1R - hairSegmentHeight;
    int xEnd2R = xEnd1R + (hairSegmentHeight / 2);
    int yEnd2R = yEnd1R - hairSegmentHeight;
    int xEnd3R = xEnd2R + (hairSegmentHeight / 2);
    int yEnd3R = yEnd2R - hairSegmentHeight;
    bezier(
    /* x1 */ xStart1R,
    /* y1 */ yStart1R,
    /* cx1 */ xStart1R + hairWaveCoefficient,
    /* cy1 */ yStart1R - (hairWaveCoefficient / 2),
    /* cx2 */ xEnd1R - hairWaveCoefficient,
    /* cy2 */ yEnd1R + (hairWaveCoefficient / 2),
    /* x2 */ xEnd1R,
    /* y2 */ yEnd1R);
    bezier(
    /* x1 */ xEnd1R,
    /* y1 */ yEnd1R,
    /* cx1 */ xEnd1R + hairWaveCoefficient,
    /* cy1 */ yEnd1R - (hairWaveCoefficient / 2),
    /* cx2 */ xEnd2R - hairWaveCoefficient,
    /* cy2 */ yEnd2R + (hairWaveCoefficient / 2),
    /* x2 */ xEnd2R,
    /* y2 */ yEnd2R);
    bezier(
    /* x1 */ xEnd2R,
    /* y1 */ yEnd2R,
    /* cx1 */ xEnd2R + hairWaveCoefficient,
    /* cy1 */ yEnd2R - (hairWaveCoefficient / 2),
    /* cx2 */ xEnd3R - hairWaveCoefficient,
    /* cy2 */ yEnd3R + (hairWaveCoefficient / 2),
    /* x2 */ xEnd3R,
    /* y2 */ yEnd3R);
    strokeWeight(10);
    point(xEnd2R + (hairSegmentHeight / 2) + 3,
    yEnd2R - hairSegmentHeight - 3);
    
    popMatrix();
  }
}
