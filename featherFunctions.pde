void brownFeather(float h, float w) {
  basicFeather(105, 84, 55, h, w);
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
  featherRachis(h);
}

void stripedFeather(float h, float w) {
  basicFeather(194, 189, 180, h, w);
  stripes(w);
  featherRachis(h);
}

void stripes(float w) {
  strokeWeight(6);
  stroke(64, 44, 28);
  noFill();
  float legLength = w;
  float angle = radians(45);
//make three "v" shaped stripes
  for (int i = 0; i < 3; i++) {
    pushMatrix();
    float shift = (w/2) * i;
    translate (shift, 0);
    rotate(-HALF_PI);
    rotate(-angle);
    line(0, 0, 0, -legLength / 2);
    rotate(angle * 2);
    line(0, 0, 0, -legLength / 2);
    popMatrix();
  }
  //one more stripe
  singleStripe(w, legLength, angle);
}

void basicFeather(float r, float g, float b, float h, float w) {
  push();
  float x = random(1, 700);
  float y = random(10, 300);

  translate(x, y);
  rotate(radians(35));
  noStroke();
  fill(r, g, b);
  ellipse(0, 0, h, w);
  fill(r, g, b, 90); 
  ellipse(6, 8, h, w);
}

void featherRachis(float h) {
  stroke(201, 200, 195);
  strokeWeight(4);
  line(-h/2, 0, h/2 + 100, 0);
  pop();
}

void paperBackground() {
  fill (240, 227, 204);
  noStroke();
  rect(35, 25, 675, 300, 20);
}

void singleStripe(float w, float legLength, float angle){
  pushMatrix();
    float shift = -(w/2);
    translate (shift, 0);
    rotate(-HALF_PI);
    rotate(-angle);
    line(0, 0, 0, -legLength / 2 + legLength / 4);
    rotate(angle * 2);
    line(0, 0, 0, -legLength / 2 + legLength / 4);
    popMatrix();
}
