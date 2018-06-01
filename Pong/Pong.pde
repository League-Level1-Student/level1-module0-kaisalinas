int bobbx = 500;
int bobbspeed = 10;
int bobby = 700;
int bobbspeedy = 10;
void setup(){

 size(1000,1000);
background(0,200,200);



}
void draw(){
background(0,200,200);
 fill(255,0,0);
stroke(255,0,0);
ellipse(bobbx,bobby,50,50);
if(bobbx>1000||bobbx<0){
bobbspeed = -bobbspeed;
}
bobbx+=bobbspeed;
bobby+=bobbspeedy;
if(bobby>1000||bobby<0)
{

}

}