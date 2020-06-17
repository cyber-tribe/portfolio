PImage img;
float scale;
float giraffe_width;
float giraffe_height;
void setup(){
    size(1500,innerHeight);
    background(255,255,255,0);
    img = loadImage("img/giraffe1.png");
    scale = 0.5
    giraffe_width = 305*scale;
    giraffe_height = 528*scale;
}

void draw(){
    size(1500,innerHeight);
    image(img, 700, 600, giraffe_width, giraffe_height);
}

