float rotationalSpeed =1.0;
PVector center;

void setup(){
  
  size(600,600);
  center = new PVector(200, 0);
}

void draw(){
  background(255);
  translate(300,300);
  fill(color(0,0,255));
  circle(center.x,center.y,50);
  //System.out.println("This is running");
  rotate1(rotationalSpeed,center);
   
}

void rotate1(float theta, PVector point){
  float newX, newY;
  //theta = convertDegreesToRadians(theta);
  //System.out.println(point.x+" "+point.y);
  //Use the formulas for rotation
  newX = point.x*cos(radians(theta)) - point.y * sin(radians(theta));
  newY = point.x*sin(radians(theta)) + point.y * cos(radians(theta));
  
  point.x = newX;
  point.y = newY;
  
}

float convertDegreesToRadians(float d){
  
  //use conversion factor PI/180
  return d*(3.14159f/180.0f); 
}
