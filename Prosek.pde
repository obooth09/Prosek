void setup() {
  size(750, 348);
  background(255);  
  multiple();
  colorMode(HSB, 360, 100, 100);
}



public void multiple() {
  for (int i = 1; i <=3; i++){
    feather();
  }
}
