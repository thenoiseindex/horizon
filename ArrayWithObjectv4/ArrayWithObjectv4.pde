//RectDim has to be smaller than incrementer.
//Holy shit it works
//More exponential math growth/and/or with data input.

float rectDim = 0.005;
boolean offset = false;
boolean hackvar = false;
float off = 0;
void setup() {
  size(1280, 800, P3D);
  stroke(255);
}

void draw() {

  background(0);
  float x=0.00001;

  for (float i = 0; i < height; i+=x) {
    offset = false;
    hackvar = false;
    for (float j = 0; j <width; j=j+x) {
      if (int(j) >= 30 && offset == false) {
        offset = true;
        off = 100;
      }
      
      Unit(rectDim+(j+width/2)+off, rectDim+(i+height/3), 0, 0, 0+x);
      Unit(width/2-j+off, rectDim+(i+height/3), 0, 0, 0+x);

      x = ((x+0.0009)+random(0.00009));
      if (offset == true && hackvar == false) {
        hackvar = true;
        off = 0;
      }
    }
  }
}


void Unit(float xloc, float yloc, float xsize, float ysize, float zpoint ) {
  point(xloc, yloc, zpoint);
  point(xloc+3, yloc, zpoint);
  point(xloc, yloc+3, zpoint);
  point(xloc+3, yloc+3, zpoint);
}
