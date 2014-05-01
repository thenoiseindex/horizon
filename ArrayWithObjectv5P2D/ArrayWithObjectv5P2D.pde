//RectDim has to be smaller than incrementer.
//Holy shit it works
//More exponential math growth/and/or with data input.

float rectDim = 0.5;
int printHeight = 8;
int printwidth = 36;
int scaleSize = 40;

void setup() {
  size(printwidth*scaleSize, printHeight*scaleSize);
  //hint(ENABLE_STROKE_PURE);
}

void draw() {
  background(0);
  float x=0.000001;
  float z=1;

  for (float i = 0; i <height; i=i+x) {
    for (float j = 0; j <width; j=j+x) {

      stroke(2+i);
      float alpha = pow(z, 5);
      Unit(rectDim+(j+width/2), rectDim+(i+height/3), 0, 0, alpha);
      Unit(width/2-j, rectDim+(i+height/3), 0, 0, alpha);

      x = ((x+0.0009)+random(0.00009));
    }
    z = max(z-0.02, 0);
  }
}


void Unit(float xloc, float yloc, float xsize, float ysize, float zpoint ) {
  println(zpoint);
  stroke(255, 255.0*zpoint);
  rectMode(CENTER);
  point(xloc, yloc);
  point(xloc+3, yloc);
  point(xloc, yloc+3);
  point(xloc+3, yloc+3);
  fill(50);
  noStroke();
  //rect(xloc,yloc,10,10);
}
