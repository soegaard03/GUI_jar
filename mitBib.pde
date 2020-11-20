void setup(){
  
}

public class Button{
boolean clicked = false;
Action a;
  int x,y,w,h;
  String s;
  PApplet p;
  
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


void click(float mX, float mY){
  if(overrect(X,Y)){
    a.execute(); 
  }else{ clicked = false;
  }
}

boolean overrect(int X, int Y){
  
  if(X>= x && X <= x+w && Y >= y && Y <= y+h){
    
  }
  return true;
}

}
