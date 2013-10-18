//RectDim has to be smaller than incrementer.
//Holy shit it works
//More exponential math growth/and/or with data input.

import processing.pdf.*;

float rectDim = 0.005;
//float rectX = 0.0001;

void setup() {
  size (1000, 300,PDF,"Horizon.pdf");
}

void draw() {
  background(0);
  float x=0.00001;
  for (float i = 0; i <height; i=i+x) {
    for (float j = 0; j <width; j=j+x) {

      //fill(15+i);
      //strokeWeight(0.3);
      stroke(100+x*100);
      //noStroke();

      Unit(rectDim+(j+width/2), rectDim+(i+height/3), 0, 0, 0+x);
      Unit(width/2-j, rectDim+(i+height/3), 0, 0, 0+x);

      x = ((x+0.0009)+random(0.00009));
      
      
    }
  }
  exit();
}


void Unit(float xloc, float yloc, float xsize, float ysize, float zpoint ) {
  strokeWeight(0.5);
  //stroke();
  rectMode(CENTER);
  point(xloc, yloc);
  point(xloc+1.5, yloc);
  point(xloc, yloc+1.5);
  point(xloc+1.5, yloc+1.5);
  //fill(50);
  //noStroke();
  //rect(xloc,yloc,10,10);
}
