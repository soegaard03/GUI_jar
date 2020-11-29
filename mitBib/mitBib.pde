void setup(){
  
}

public class Button{
boolean clicked = false;
Action a;
  int x,y,w,h;
  String s;
  PApplet p;
  int mX, mY;
  
  Button(int x, int y, int w, int h, String s, PApplet p){
    this.x = x; 
    this.y = y;
    this.w = w;
    this.h = h;
    this.s = s;
    this.p = p;
  }


void addAction(Action ok){
  a = ok;
 
}

void display(){
 p.rect(x, y, w, h);
}


void click(){
 mX = p.mouseX;
 mY = p.mouseY;
  if(mX>= x && mX <= x+w && mY >= y && mY <= y+h){
    a.execute(); 
  }
  }
}
