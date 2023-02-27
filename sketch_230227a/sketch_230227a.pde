int step=15;
color bg=#2b2d42;
color [] colorList={#f6bd60,#f7ede2,#f5cac3,#84a59d,#f28482};

void setup(){
size(1000,1000);
background(0);
for(int i=0;i<width;i+=step){
for(int j=0;j<height;j+=step){
  stroke(colorList[int(random(colorList.length))],min(i/7,j/7));
  strokeWeight(min(min(i/step,j/step),13));
  if(random(1)<0.5){
  line(i,j,i+step,j+step);
  }
    else{
  line(i,j+step,i+step,j);
  }


}
}
save("mp1.png");
}

void draw(){

}
