void setup(){
  size(2000,1000,P3D);
  stroke(0);
  fill(140);
  //noFill();
  //noStroke();
  //fill(200);
  //frameRate(20);
}
float r=0;
int d=3;
void draw(){
  background(200);
  //ambientLight(300,300,300);
  lights();;
  translate(width/2,height/2);
  //translate(w*pow(3,d-1),w*pow(3,d-1),w*pow(3,d-1));
  r+=5;
  rotateX(radians(r));
  rotateY(radians(r));
  
  int d=4;

  int a;
  a=men(d);
}

int w=8;
int men(int d){
  int c;
  if(d==0){return 0;}
  
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      for(int k=0;k<3;k++){
        if(i==1 && j==1)continue;
        if(j==1 && k==1)continue;
        if(k==1 && i==1)continue;
        
         translate(i*pow(3,d-1)*w,j*pow(3,d-1)*w,k*pow(3,d-1)*w);
         if(d!=1){
          c=men(d-1);
        }else{
          box(w);
        }
        translate(-i*pow(3,d-1)*w,-j*pow(3,d-1)*w,-k*pow(3,d-1)*w);
      }
    }
  }
  return 0;
}