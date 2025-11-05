public void feather () {
  float h = random(150, 250);
  float w = random(50, 100);
  push();
  float x = random(1, 700);
  float y = random(10, 300);
  translate(x, y);
  //rotate(radians(45));
  //triangle(h  + 20, w, (h/4 + 20), (h/4 + 20), (h/4 + 40), (h/4 + 40));
  noStroke();
  fill(random(200, 300), random(40, 80), random(10, 40));
  ellipse(0, 0, h, w);
  stripes(w);
  stroke(186, 172, 164);
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
