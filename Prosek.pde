void setup() {
  size(500, 500);
  background(255);  
  feather();
}

public void feather () {
  ellipse(300,100,(int)(Math.random() * 151) + 250, (int)(Math.random() * 51) + 50);
}
