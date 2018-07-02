void setup(){
size(1000, 1000);
background(255, 100, 155);
}
void draw(){
makeMagical();
fill(random(255),(random(255)),(random( 255)));
ellipse(getWormX((int)random(1000)), getWormY((int)random(1000)), 50, 50);
ellipse(getWormX((int)random(1000)), getWormY((int)random(1000)), 50, 50);
ellipse(getWormX((int)random(1000)), getWormY((int)random(1000)), 50, 50);
ellipse(getWormX((int)random(1000)), getWormY((int)random(1000)), 50, 50);
ellipse(getWormX(1000), getWormY(1000), 50, 50);
ellipse(getWormX(1000), getWormY(1000), 50, 50);
ellipse(getWormX(1000), getWormY(1000), 50, 50);
ellipse(getWormX(1000), getWormY(1000), 50, 50);
ellipse(getWormX(1000), getWormY(1000), 50, 50);
ellipse(getWormX(1000), getWormY(1000), 50, 50);
}
float frequency = .001;
float noiseInterval = PI;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}