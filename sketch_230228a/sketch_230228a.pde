int col,row;
int step=20;
int w=2000;
int h=2000;
float fly=0;
float [][] terrain;
void setup(){
size(1000,1000,P3D);
background(0);
col=w/step;
row=h/step;
terrain = new float[col][row];
 float yoff=0;
 for(int i=0;i<row;i++)
  { float xoff=0;

      for(int j=0;j<col;j++){
       terrain[i][j]= map(noise(xoff,yoff),0,1,-100,100);   
       xoff+=0.1;
      }
      yoff+=0.1;
    }
}

void draw(){
  fly-=0.04;
  float yoff=fly;
 for(int i=0;i<row;i++)
  { float xoff=0;

      for(int j=0;j<col;j++){
       terrain[i][j]= map(noise(xoff,yoff),0,1,-100,100);   
       xoff+=0.1;
      }
      yoff+=0.1;
    }
   stroke(255);
   background(0);

   frameRate(1);
   fill(255,255,255,100);
    strokeWeight(1);
    translate(width/2,height/2);
  rotateX(PI/3);
  translate(-w/2,-h/2);
  for(int i=0;i<row-1;i++)
  {
    beginShape(TRIANGLE_STRIP);
      for(int j=0;j<col;j++)
  {
    vertex(j*step,i*step, terrain[i][j]);
    vertex(j*step,(i+1)*step, terrain[i+1][j]);
    
    //vertex((j+1)*step,i*step, random(-10,10));
    //vertex((j+1)*step,(i+1)*step, random(-10,10));
  }
  `
  endShape();
  }
}
