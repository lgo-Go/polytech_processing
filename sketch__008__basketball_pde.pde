float x = 35; 
float y = 300; 
float r = 75; 

float x1 = 1200; 
float y1 = 100; 
float r1 = 200; 

int t = 0; 

float v1 = 3; 
float v2 = 40; 

int score; 

 void setup() 
{ 
 size(1300, 650); 
} 

 void draw() 
{ 
 background(75); 
 text("Score:"+score, 10, 20); 
 
 fill(0); 
 ellipse(x1, y1, r1, r1);

 PImage img = loadImage("ring.jpg"); 
 image(img,x1-100,y1-100,r1,r1);  

 fill(212, 72, 2); 
 ellipse(x, y, r, r); 

 t = t + 1; 
 x = x + v1; 
 y = y - v2/10; 
 v2 = v2 - t/30; 

 if(mouseY < (y + r/2) 
  & mouseX > (x - r/2) 
  & mouseY > (y - r/2) 
  & mouseX < (x + r/2)) 
 { 
  v2 = -v2; 
 } 

 if(x > (x1 - r1/2) 
  & x < (x1 + r1/2)  
  & y > (y1 - r1/2) 
  & y < (y1 + r1/2)) 
 { 
  score++; 
 } 
}