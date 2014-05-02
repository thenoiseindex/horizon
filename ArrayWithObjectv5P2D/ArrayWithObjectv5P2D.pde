import controlP5.*;
ControlP5 cp5;

//RectDim has to be smaller than incrementer.
//Holy shit it works
//More exponential math growth/and/or with data input.

float rectDim = 0.5;
int printHeight = 8;
int printwidth = 36;
int scaleSize = 35;
int alpha_decay = 6;

void setup() {
  size(printwidth*scaleSize, printHeight*scaleSize);
  //hint(ENABLE_STROKE_PURE);
  cp5 = new ControlP5(this);
  cp5.addSlider("alpha_fade", 0.0, 10.0, alpha_decay, 20, 20, 100, 14);
}

void draw() {
  background(0);
  float x=0.000001;
  float z=255;

  for (float i = 0; i <height; i=i+x) {
    for (float j = 0; j <width; j=j+x) {

      stroke(2+i);
      //float alpha = pow(z, 5);
      Unit(rectDim+(j+width/2), rectDim+(i+height/3), 0, 0, z);
      Unit(width/2-j, rectDim+(i+height/3), 0, 0, z);

      x = ((x+0.0009)+random(0.00009));
    }
    
    z = max(z-alpha_decay, 0);
  }
}


void Unit(float xloc, float yloc, float xsize, float ysize, float zpoint ) {
  //println(zpoint);
  //noiseDetail(10,0.45);
  //strokeWeight(max(noise(xloc+random(.00009), yloc+random(.00009)), 0.3));
  strokeWeight(random(.4,1) );
  stroke(255, zpoint);
  rectMode(CENTER);
  point(xloc, yloc);
  point(xloc+3, yloc);
  point(xloc, yloc+3);
  point(xloc+3, yloc+3);
  //fill(50);
  //noStroke();
  //rect(xloc,yloc,10,10);
}

public void alpha_fade(int theValue) {
  alpha_decay = theValue;
  //println(theValue);
}
