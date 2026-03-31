//REQ: create a Button class here with the specs mentioned in the assignment document.

class Button {
  float x, y, w, h;
  String caption;
  color fillColor;
  
  Button() {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    
    caption = "Button";
    fillColor=color(0, 0, 200);
  }
  
  Button(float x1, float y1, float w1, float h1, String cap, color col) {
    x = x1;
    y = y1;
    w = w1;
    h = h1;
    
    caption = cap;
    fillColor = col;
  }
  
  boolean mouseOver() {
    return mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y-h/2 && mouseY <= y + h/2;
  }
  
  void display() {
    stroke(255);
    fill(fillColor);
    rectMode(CENTER);
    rect(x, y, w, h);
    
    fill(255);
    textAlign(CENTER, CENTER);
    text(caption, x, y);
  }

}
