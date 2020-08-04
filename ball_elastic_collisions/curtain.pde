class Curtain{
  //__________________DECLARATIONS________________________  
  int xspacing = 10;   // How far apart should each horizontal location be spaced
  int w;              // Width of entire wave
  int size;
  float theta = 0.0;  // Start angle at 0
  float amplitude = 75.0;  // Height of wave
  float period = 250.0;  // How many pixels before the wave repeats
  float dx;  // position for incrementing X, a function of period and xspacing
  PVector[] positions;
  float m = 1000000; //mass of curtain for vector calculations, set to something stupdily high
  //_________________________DEFINITION________________
  Curtain(int w1, float dx1,int size1) {
    w = w1;
    dx = (dx1 / period) * xspacing;
    positions = new PVector[w/xspacing];
    for(int i = 0; i<positions.length;i++){
      positions[i] = new PVector();
    }
    size = size1;
  }
  //____________________FUNCTIONS_________________
  void calcWave(){
        // Increment theta (try different positions for 'angular velocity' here
    theta += 0;
  
    // For every x position, calculate a y position with sine function
    float x = theta;
    for (int i = 0; i < positions.length; i++) {
      positions[i].y = sin(x)*amplitude+height/2;
      x+=dx;
      positions[i].x = i*xspacing;
    }
  }
  
  void renderWave() {
    noStroke();
    fill(100,250,250);
    // A simple way to draw the wave with an ellipse at each location
    for (int i = 0; i < positions.length; i++) {
      ellipse(positions[i].x,positions[i].y, size, size);
    }
  }
  
}
