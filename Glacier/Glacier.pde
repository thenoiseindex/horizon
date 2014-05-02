int scaleSize = 40;
int printHeight = 8*scaleSize;
int printWidth = 36*scaleSize;
int y_start = (int)(printHeight/3.0);
int y_stop = y_start*5;
float[] ice = new float[printWidth];

void setup() {
  size((int)printWidth, (int)printHeight);
  hint(ENABLE_STROKE_PURE);
  for (int i = 0; i < printWidth; i++) {
    ice[i] = 0;
  }
  noLoop();
}

void draw() {
  background(0);

  //set point color to white
  
  //stroke(255);
  for (int x = 0; x < printWidth/2; x++) {
    for (int y = y_start; y < y_stop; y++) {
      stroke((255-(float)(y-y_start)/(float)(y_stop-y_start)*255)*pow(random(0.5, 1.0),2));
      point(x, y_start+ice[x]);
      point(printWidth-x-1,y_start+ice[x]);

      ice[x] = ice[x]+random(0.0, 1.0);
    }
  }
}
