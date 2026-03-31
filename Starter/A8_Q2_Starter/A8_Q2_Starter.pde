int scn = 0;     //this variable is used to track which scene is currently active

//REQ: create two Button objects here: 
//  b0: the PLAY button in scene0. 
//  b1: the HOME button in scene1.
//  Use these values for your buttons:
//      b0: x = 250, y = 300, width = 100, height = 40, fill color = light purple, caption = "PLAY"
//      b1: x = 70,  y = 460, width = 100, height = 40, fill color = greenish, caption = "HOME"

Button b0 = new Button(250, 300, 100, 40, "PLAY", color(205, 150, 255));
Button b1 = new Button(70, 460, 100, 40, "HOME", color(0, 255, 0));

void setup(){
  size(500,500);
  colorMode(HSB);
}
void draw(){
  switch(scn){
    case 0: scene0(); break;  //home screen (default)
    case 1: scene1(); break;  //animation from Assignment A6-Q1
  }
}
