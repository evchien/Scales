void setup() {
  size(400, 400);
  noLoop();
}
void draw() {
  for(int y=0; y<500; y=y+10){//rows
    for(int x=-50; x<50; x=x+30){//columns
      scale(x,y);
    }
  }
}
void scale(int x, int y) {
  int rand = (int)(Math.random()*20);
  int randOne = (int)(Math.random()*30);
  int randTwo = (int)(Math.random()*25);
  fill((int)(Math.random()*75),(int)(Math.random()*50+100),(int)(Math.random()*150)+105);
  bezier(x,y,x+75,y-30,x+80,y,x+100,y);
  bezier(x+100,y,(x+175-rand),y-30,(x+180-rand),y,x+200,y);
  bezier(x+200,y,(x+275-randOne),y-30,(x+280-randOne),y,x+300,y);
  bezier(x+300,y,(x+375-randTwo),y-30,(x+380-randTwo),y,x+400,y);
}
