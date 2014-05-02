/*

Ok This is killer—implement saveFrame into all mysketches
iterate variations. 
more lines AND various sizes for variation.
Plan for live input.

*/


float noiseScale=0.02;
float mouseRep = 100;

void setup() {
  size(1800, 300);
}

void draw() {
  background(0);
  for (int x=0; x < width+401; x= x+3) {
    float noiseVal = noise((mouseX+x)*noiseScale, 
    mouseY*noiseScale);
    
    stroke(noiseVal*180);
    line(x+200, (mouseY)+noiseVal*200, x+200, mouseX%height+noiseVal*200);
    
    stroke(noiseVal*200);
    line(x+100, (mouseY)+noiseVal*200, x+100, mouseX%height+noiseVal*200);
    
    stroke(noiseVal*220);
    line(x, mouseY+noiseVal*200, x, mouseX%height+noiseVal*200);

    stroke(noiseVal*240);
    line(x-100, (noiseScale)+noiseVal*200, x-100, mouseX%height+noiseVal*200);
    
    stroke(noiseVal*245);
    line(x-200, (mouseY)+noiseVal*200, x-200, mouseX%height+noiseVal*200);
    
    noiseScale=noiseScale-0.000000001;
  }
}
