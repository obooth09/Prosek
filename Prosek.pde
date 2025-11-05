void setup() {
  size(750, 348);
  background(255);  
  paperBackground();
  multiple();
  colorMode(HSB, 360, 100, 100);
}



public void multiple() {
  int pick = (int) random(1,3);
  System.out.println(pick);
  if (pick == 1) {
    brownFeather();
  } else {
    stripedFeather();
  }
  //for (int i = 1; i <=3; i++){
  //  stripedFeather();
  //}
}
