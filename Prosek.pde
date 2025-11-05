void setup() {
  size(750, 348);
  background(255);  
  paperBackground();
  multiple();
  colorMode(HSB, 360, 100, 100);
}



public void multiple() {
  for (int i = 1; i <=4; i++){
    int pick = (int) random(1,4);
  System.out.println(pick);
  if (pick == 1) {
    brownFeather();
  } else if (pick == 2) {
    stripedFeather(random(150, 250), random(50, 100));
  } else {
    stripedFeather(random(150, 250) / 2, random(50, 100) / 2);
  }
  }
}
