float x,y,r; 
float inc = TWO_PI/25.0; 
void setup(){size(500,500); r=100;} 
void draw() {background(50,150,50); 
inc=inc+1; 
x=100+round(r*cos(PI*inc/180)); 
y=100+round(r*sin(PI*inc/180)); 
fill(0,0,0); rect(x,y,50,50);}