//RectDim has to be smaller than incrementer.
//Holy shit it works
//More exponential math growth/and/or with data input.

float rectDim = 0.5;
//float rectX = 0.0001;

void setup(){
  size(2400,600,P3D);
}

void draw(){
  background(0);
  float x=0.00001;
  for (float i = 0; i <height; i=i+x){
    for (float j = 0; j <width; j=j+x){

//fill(15+i);
stroke(2+i);
//noStroke();

Unit(rectDim+(j+width/2), rectDim+(i+height/3),0, 0, 0+x);
Unit(width/2-j,rectDim+(i+height/3),0, 0, 0+x);

x = ((x+0.0009)+random(0.00009));
    }
    }
}


void Unit(float xloc,float yloc,float xsize,float ysize,float zpoint ){
  stroke(255);
  rectMode(CENTER);
  point(xloc,yloc, zpoint);
  point(xloc+3,yloc, zpoint);
  point(xloc, yloc+3,zpoint);
  point(xloc+3, yloc+3,zpoint);
  fill(50);
  noStroke();
  //rect(xloc,yloc,10,10);
    

}

