/*

THIS for visual inspiration


*/
float noiseVal;
float noiseScale=0.002;
float X= 0.001;

void setup() {
  size(1200, 1200);
}

void draw() {
  background(0);
  for (float y = 0; y < height; y= y+3+noiseVal) {
    for (float x = 0; x < width; x= x+3+noiseVal) {
     
      noiseDetail(15, 0.8);
      noiseVal = noise((mouseX + x + width/2) * noiseScale, 
      (mouseY + y) * noiseScale);
      /*stroke(noiseVal * 200);
      line(x, 0.1+noiseVal*200, x, 1%height+noiseVal*200);
      */
      stroke(noiseVal * 100,100+y);
      line(x, 0.01+noiseVal*200, x, 1%height+noiseVal*200);
      
      
     X =X+ 0.0001;
    }
  }
}
