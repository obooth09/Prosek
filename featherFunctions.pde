//blended background element
void paperBackground() {
  noStroke();
  int xCoor = 35;
  int yCoor = 25;
  int rectWidth = 675;
  int rectLength = 300;
  color darkSide = color(176, 152, 118);
  color lightSide = color(224, 207, 184);
  //this loop came from proccessing refrence
  for (int i = 0; i < rectWidth; i++) {
    float t = map(i, 0, rectWidth, 0, 1);
    color blended = lerpColor(darkSide, lightSide, t);
    stroke(blended);
    rect(xCoor + i, yCoor, 1, rectLength, 20);
  }
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

// make the feathers more specialized
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

//details for each feather
void stripes(float w) {
  strokeWeight(6);
  stroke(64, 44, 28);
  noFill();
  float legLength = w;
  float angle = radians(45);
  //three stripes (my cousin helped me with this)
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

void featherRachis(float h) {
  stroke(201, 200, 195);
  strokeWeight(4);
  line(-h/2, 0, h/2 + 100, 0);
  pop();
}

void singleStripe(float w, float legLength, float angle) {
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
