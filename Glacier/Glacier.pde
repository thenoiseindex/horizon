import processing.pdf.*;

int scaleSize = 20;
int printHeight = 12*scaleSize;
int printWidth = 32*scaleSize;
int y_start = (int)(printHeight/3.0);
int y_stop = y_start*3;
float[] ice = new float[printWidth];
boolean drawing = true;

TimerScheduler clock; // Instance of the main Timer object

void setup() {
  //size((int)printWidth, (int)printHeight);
  size ((int)printWidth, (int)printHeight, PDF, "Glacier_20x_magic2.pdf");

  hint(ENABLE_STROKE_PURE);
  for (int i = 0; i < printWidth; i++) {
    ice[i] = 0;
  }
  clock = new TimerScheduler(2);  // Instantiate the Timer and set it to 1000ms
  //noLoop();
}

void draw() {
  background(0);

  while (drawing) {
    delay(2);
    //println("looping");
  }


  exit();
}

int x = 0;
int y = y_start;
float inc = 0.001;

void draw_map(double error) {

  if ( x < printWidth) {
    //non linear fade from white to black
    stroke((255-(float)(y-y_start)/(float)(y_stop-y_start)*255)*pow(random(0.5, 1.0), 7));
    point(x+inc, y_start+ice[x]);
    //point(printWidth-x-1, y_start+ice[x]);
    inc = ((inc+0.009)+random(0.0009));

    ice[x] += error-0.5+random(0.0,0.5);

    // update y
    y++;
    //if we've the bottom of the column, then increment x
    if (y > y_stop) {
      x++;
      y = y_start;
    }
    println(error);
  } 
  else {
    clock.timer.cancel();
    clock.timer.purge();
    //println(x++);
    drawing = false;
  }
}
