int step=5;float ns=0.0005;
color bg=#2b2d42;
color [] colorList={#7bd5f5,#7b7ff6,#4adede,#1ca7ec,#1f2f98};

void setup(){
size(1080,1080);
background(0);
smooth();
//for(int i=0;i<width;i+=step){
//for(int j=0;j<height;j+=step){
//    stroke(colorList[int(noise(i*ns,j*ns)*colorList.length)]);
//  strokeWeight(1);
  
//  pushMatrix();
//  translate(i+step*0.5, j+step*0.5);
//  float theta = noise(i*ns,j*ns)*TWO_PI;
//  float rad = step*0.5;
//  rotate(theta);
//  line(0, -step*0.5,0, step*0.5);
//  popMatrix();
//}
//}
//save("mp5 mist.png");
}

void draw(){  
  background(0);
  for(int i=0;i<width;i+=step){
for(int j=0;j<height;j+=step){
    stroke(colorList[int(noise(i*ns+frameCount*0.1,j*ns+frameCount*0.1)*colorList.length)]);
  strokeWeight(1);
  
  pushMatrix();
  translate(i+step*0.5, j+step*0.5);
  float theta = noise(i*ns+frameCount*0.1,j*ns+frameCount*0.1 )*TWO_PI;
  float rad = step*0.5;
  rotate(theta);
  line(0, -step*0.5,0, step*0.5);
  popMatrix();
}
}
//  background(0);
//  for(int i=0;i<width;i+=step){
//for(int j=0;j<height;j+=step){
// fill(noise(i*ns,j*ns)*255,0,0);
// noStroke();
// rect(i,j,step,step);
//}
//}

//for(int i=0;i<width;i+=step){
//for(int j=0;j<height;j+=step){
  //stroke(colorList[int(random(colorList.length))],min(i/7,j/7));
  //strokeWeight(min(min(i/step,j/step),7));
//  //strokeWeight(5);
//  if(random(1)<0.3){
//  line(i,j,i+step,j+step);
//  }
//    else{
//  line(i,j+step,i+step,j);
//  }


//}
//}
}
