
void setup() {
  size(800,800);
  noLoop();
}

void draw(){
  draw_command_rect(width,height);
}

void draw_command_rect(int w, int h){
  strokeWeight(5);
  strokeJoin(ROUND);
  rect(0,6*h/8,w/2,h/8);
  rect(0,7*h/8,w/2,h/8);
  rect(w/2,6*h/8,w/2,h/8);
  rect(w/2,7*h/8,w/2,h/8);
  
  fill(0);
  text("溜める",w/4,6.5*h/8);
  text("攻撃",3*w/4,6.5*h/8);
  text("防御",w/4,7.5*h/8);
  text("必殺技",3*w/4,7.5*h/8);
}
