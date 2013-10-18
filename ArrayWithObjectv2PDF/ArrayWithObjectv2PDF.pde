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
int alpha;

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
    alpha = (int)(255 - (x)*300);
  }

  // change for alpha

  stroke(255, 255, 255, alpha);

  Unit(rectDim+(j+width/2), rectDim+((float)i+height/3), (float)x);
  Unit(width/2-j, rectDim+((float)i+height/3), (float)x);

  x += error;
  j=j+(float)x;
  println("error " + error);
}


void Unit(float xloc, float yloc, float error) {
  strokeWeight(0.5);
  //stroke();
  rectMode(CENTER);
  point(xloc, yloc);
  // change for moving error
  point(xloc+error, yloc);
  point(xloc, yloc+error);
  point(xloc+error, yloc-error);

}

