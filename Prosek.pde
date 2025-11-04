void setup() {
  size(750, 348);
  background(255);  
  multiple();
}

public void feather () {
  pushMatrix();
  float x = random(1,700);
  float y = random(10,300);
  translate(x, y); 
  rotate(radians(45));
  ellipse(0,0,(int)(Math.random() * 151) + 250, (int)(Math.random() * 51) + 50);
  popMatrix();
           
}

public void multiple() {
  for (int i = 1; i <=3; i++){
    feather();
  }
}
