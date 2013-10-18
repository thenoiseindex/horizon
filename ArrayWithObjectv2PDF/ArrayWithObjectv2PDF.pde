//RectDim has to be smaller than incrementer.
//Holy shit it works
//More exponential math growth/and/or with data input.

import processing.pdf.*;

TimerScheduler clock; // Instance of the main Timer object

float rectDim = 0.005;
//float rectX = 0.0001;
boolean drawing = true;
double i = 0;
float j = 0;
double x=0.00001;

void setup() {
  size (1000, 300, PDF, "Horizon.pdf");
  clock = new TimerScheduler(10);  // Instantiate the Timer and set it to 1000ms
} 

void draw() {
  background(0);

  while (drawing) {
  }

  exit();
}

void draw_map(double error) {
  
  if(i >= height){
    drawing = false;
    return;
  }
  
  if(j >= width) {
    i=i+x;
    j = 0;
  }

  stroke(255, 255, 255, (int)(x*2550));

  Unit(rectDim+(j+width/2), rectDim+((float)i+height/3), (float)x, (float)x, 0);
  Unit(width/2-j, rectDim+((float)i+height/3), (float)x, (float)x, 0);

  x += error;
  j=j+(float)x;
  println("error " + error);
}


void Unit(float xloc, float yloc, float xsize, float ysize, float zpoint ) {
  strokeWeight(0.5);
  //stroke();
  rectMode(CENTER);
  point(xloc, yloc);
  point(xloc+xsize, yloc);
  point(xloc, yloc+ysize);
  point(xloc+xsize, yloc-ysize);

}

