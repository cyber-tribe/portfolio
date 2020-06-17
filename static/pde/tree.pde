int tree_step;
float tree_angle;
float tree_length;
float tree_length_limit;
float tree_startx;
float tree_scale;
 
void setup() {
  size(1500,innerHeight);
  background(255,255,255,0);
  tree_step = random(2,8);
  tree_angle = 30;
  tree_length = 100;
  tree_length_limit = 20;
  tree_scale = 0.6;
  tree_startx = random(-100,innerWidth+100);
  tree_angle = radians(tree_angle);
  newTree();
}
 
void draw() {
  size(1500,innerHeight);
  newTree();
  noLoop();
}
 
void newTree() {
 
  translate(tree_startx, height);
  branch(tree_startx, tree_length, tree_step);
}
 
void branch(float x0, float h, int n) {
  float theta;
 
  line(0, 0, 0, -h);
  translate(0, -h);
  h *= tree_scale;
  if (n > 0) {
    theta = random(0, tree_angle);
    pushMatrix();    
    rotate(theta);   
    branch(x0, random(tree_length_limit,h), n-1);
    popMatrix();     
    theta = random(-tree_angle,0);
    pushMatrix();
    rotate(theta);
    branch(x0, random(tree_length_limit,h), n-1);
    popMatrix();
  }
}