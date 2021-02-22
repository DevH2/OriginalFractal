//attempt at a shuriken;just a word of warning, the browser might not be able to handle LVL 8+.
public final int LVL = 5;
public final float X2 = 0.75;
public void setup(){
 size(840,840);
 background(0);
 stroke(255);
 strokeWeight(3);
}
public void draw(){
  background(0);
  translate(300,200);
  recurse(LVL);
}
private void recurse(int lvl) {
  if (lvl <=0) {
    line(0, 0, X2*width, 0);
  } else {
    pushMatrix();
    scale(2*cos((float)Math.PI/6)/3);
    rotate((float)Math.PI/6); //30deg
    
    recurse(lvl-1);
    translate(X2*width, 0);
    rotate(((float)(2*Math.PI))/3); //120deg
    
    recurse(lvl-1);
    translate(X2*width, 0);
    rotate(((float)(2*Math.PI))/3); //120deg
    
    recurse(lvl-1);
    popMatrix();
  }
}
public void keyPressed(){
  if(key == ' ' && LVL>5){
    LVL--;
  }
  if(key == '1' && LVL<=12){
    LVL++;
  }
}
