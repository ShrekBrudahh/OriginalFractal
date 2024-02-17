public void setup(){
  size(700,700);
  background(0);
}
float r = 0;

public void draw(){
  fill(0);
  stroke(255);
  r += PI/180;
  fractalF(400+(float)(100*Math.cos(r)),350+(float)(100*Math.sin(r)),100,(float)(100*Math.cos(r)));
}

public void fractalF(float x, float y, float len, float sinM) {
  if (len <= 10){
    rect(x,y,len*len*(float)(Math.sin(len)*sinM),len*len);
  }else{
    fractalF(x,y,len/2,sinM);
    fractalF(x-len,y,len/2,sinM);
    fractalF(x+len,y,len/2,sinM);
    fractalF(x,y+len,len/2,sinM);
    fractalF(x,y-len,len/2,sinM);
  }
}
