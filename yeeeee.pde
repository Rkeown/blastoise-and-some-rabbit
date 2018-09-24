//Adds variables that are called on when loading the images
PImage hinkel;
PImage nothinkel;
//variables that change so the photos X location can change which makes them move 
int hinkelx = 0;
int nothinkelx = 0;
void setup()
{ //Makes the program full screen
  fullScreen(); 
  //loads the images into the program so that it knows what to display
  hinkel = loadImage("hinkel.jpg");
  nothinkel = loadImage("italian gas mask.jpg");
  //Makes the font of the text larger
  textSize(200);
}


void draw()
{
  background(#0A8111);
  //telling the program where to load the images when the program starts
  image(nothinkel,nothinkelx,200);
  image(hinkel,hinkelx,600,300,200);
  //Tells the game that if Hinkel crosses the line first to display a winning text
  if (hinkelx >= 1700)
  {
    text("hinkel wins",width/2,height/2);
  }
  rect(2000,0,50,height);
    //Tells the game to display a text if the other player crosses the line first 
    if (nothinkelx >= 1800)
  {
    text("spaget boi wins",1000,height/2);
  }
  
}
//Constantly watches for if keys are pressed
void keyPressed(){
  //tells the game to move hinkel whan "a" is pressed
  if(key =='a')
  {
    hinkelx = hinkelx + 10;
  }
  //tells the game to move Spaget boi if "l" is pressed
  if(key =='l')
  {
    nothinkelx = nothinkelx + 10;
  }
   
}
