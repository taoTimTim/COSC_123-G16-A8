void scene0(){  //home screen
  background(0);
  //REQ: copy your code from A7 (and make any necessary changes) to display a welcome message followed by the PLAY button. 
  //     The PLAY button must be drawn using the Button's display function.
  fill(255);
  textAlign(CENTER);
  textSize(32);
  text("Welcome!", width / 2, 180);
  
  textSize(16);
  text("Press the button below", width / 2, 210);
  
  b0.display();
}
