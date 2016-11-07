float side = 30;
float writeSide = 50;

int textX=100;
int textY=100;
PImage img;
PImage cursor;
PImage currentGlyph;
int keyIndex  = 0;

void setup(){
    img = loadImage("input.jpg");
  size(800,500);

}

void draw(){
 
  noFill();
  image(img,0,0,800,500);
  rect(mouseX,mouseY,side,side);
  cursor = get(mouseX,mouseY,int(side),int(side));
  image(cursor,450,450,50,50);

}

//keys are squares in roctal from upper left
//four rows of eight, uppre case grabs a key lower 
//case prints a key and mouse click selects "text" location

void keyPressed(){
 int ones,eights,letterIndex;
if(key == '\n'){
  img.save("output.jpg");
}

if(key == '='){
   side += 5; 
}
if(key == '-'){

  side -= 5;
}

 if(key >= 0141 && key <= 0173){
    letterIndex = int(key) - 0141;   
    ones = letterIndex&7;
    eights = (letterIndex>>3)&7;
    currentGlyph = get(int(side*ones),int(side*eights),int(side),int(side));
    image(img,0,0,800,500);
    image(currentGlyph,textX + writeSide*(keyIndex%20),textY + writeSide*int(keyIndex/20),int(writeSide),int(writeSide));
    img = get(0,0,800,500);
    keyIndex++;
 }
 else{
}

 if(key >= 0101 && key <= 0132){
    letterIndex = int(key) - 0101;   
    ones = letterIndex&7;
    eights = (letterIndex>>3)&7;
    currentGlyph = cursor;
    
    image(img,0,0,800,500);

    image(currentGlyph,int(side*ones),int(side*eights),int(side),int(side));
    
    img = get(0,0,800,500);
 }
 else{
}

if(key == ' '){
    keyIndex++;
}
}

void mouseClicked(){
 
  textX = mouseX;
  textY = mouseY;
  keyIndex = 0;
  
}