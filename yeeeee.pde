PImage hinkel;
PImage nothinkel;
int hinkelx = 0;
int nothinkelx = 0;
void setup(){
  fullScreen(); 
  hinkel = loadImage("hinkel.jpg");
  nothinkel = loadImage("italian gas mask.jpg");
  textSize(200);
}


void draw(){
  background(#0A8111); 
  image(nothinkel,nothinkelx,200);
  image(hinkel,hinkelx,600,300,200);
  if (hinkelx >= 1700)
  {text("hinkel wins",width/2,height/2);}
  rect(2000,0,50,height);
  
    if (nothinkelx >= 1800)
  {text("spaget boi wins",1000,height/2);}
  
}

void keyPressed(){
  if(key =='a')
  {hinkelx = hinkelx + 10;}
  
  if(key =='l')
  {nothinkelx = nothinkelx + 10;}
   
}
