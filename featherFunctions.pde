public void brownFeather(){
  float h = random(150, 250);
  float w = random(50, 100);
  push();
  float x = random(1, 700);
  float y = random(10, 300);
  translate(x, y);
  rotate(radians(35));
  //triangle(h  + 20, w, (h/4 + 20), (h/4 + 20), (h/4 + 40), (h/4 + 40));
  noStroke();
  fill(105, 84, 55);
  ellipse(0, 0, h, w);
  //make the single stripe
  strokeWeight(7);
  stroke(31, 20, 5);
  noFill();
  push();
  translate(-w / 3, 0);
  rotate(-HALF_PI);
  rotate(-radians(45));
  line(0, 0, 0, -w / 2);
  pop();
  stroke(201, 200, 195);
  strokeWeight(4);
  line(-h/2, 0, h/2 + 100, 0);
  pop();
}



public void stripedFeather(float h, float w){
  
  push();
  float x = random(1, 700);
  float y = random(10, 300);
  translate(x, y);
  rotate(radians(35));
  //triangle(h  + 20, w, (h/4 + 20), (h/4 + 20), (h/4 + 40), (h/4 + 40));
  noStroke();
  fill(194, 189, 180);
  ellipse(0, 0, h, w);
  stripes(w);
  stroke(201, 200, 195);
  strokeWeight(4);
  line(-h/2, 0, h/2 + 100, 0);
  pop();

}

public void stripes(float w) {
  strokeWeight(6);
  stroke(64, 44, 28);
  noFill();
  float legLength = w;
  float angle = radians(45); 
  
  for (int i = 0; i < 3; i++){
    pushMatrix();
    float shift = w/2 * i;
    translate (shift, 0);
    rotate(-HALF_PI);
    rotate(-angle);
    line(0, 0, 0, -legLength / 2);
    rotate(angle * 2);
    line(0, 0, 0, -legLength / 2);
    popMatrix();
  }
  
}

public void paperBackground() {
  fill (240, 227, 204);
  noStroke();
  rect(35,25, 675, 300, 20);

}
