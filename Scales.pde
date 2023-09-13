void setup(){
  size (1000,1000);
    noLoop();
}
void draw(){
   background (225,225,225);
 fill (150,200,150);
noStroke();
boolean offset = true;
for(int w= -170; w<=1000; w+=70){
  for (int v= 0; v<= 1000; v+=200){
    if (offset==true)
    scale (v+100,w);
    else 
    scale (v,w); 
    }
  if (offset==true)
    offset= false;
    else 
    offset=true; 
  }
}

void scale(int x, int y)
{
  int z = (int) (Math.random ()*256);
  fill (150,200,150);
bezier(x,y,x-25,y+100,x+130,y+130,x+100,y+200);
bezier(x,y,x+25,y+100,x-130,y+130,x-100,y+200);
fill (110,200,110);
bezier(x,y+20,x-25,y+100,x+120,y+110,x+90,y+200);
bezier(x,y+20,x+25,y+100,x-120,y+110,x-90,y+200);
fill (70,200,70);
bezier(x,y+40,x-25,y+100,x+110,y+110,x+80,y+200);
bezier(x,y+40,x+25,y+100,x-110,y+110,x-80,y+200);
fill (30,200,30);
bezier(x,y+60,x-25,y+100,x+100,y+110,x+70,y+200);
bezier(x,y+60,x+25,y+100,x-100,y+110,x-70,y+200);
triangle(x,y+60,x+70,y+200,x-70,y+200);
fill(z,10,10);
ellipse(x,y+120,15,30);
}
