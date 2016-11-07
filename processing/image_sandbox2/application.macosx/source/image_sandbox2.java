import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class image_sandbox2 extends PApplet {

float side = 30;
float writeSide = 50;

int textX=100;
int textY=100;
PImage img;
PImage cursor;
PImage currentGlyph;
int keyIndex  = 0;

public void setup(){
    img = loadImage("input.jpg");
  

}

public void draw(){
 
  noFill();
  image(img,0,0,800,500);
  rect(mouseX,mouseY,side,side);
  cursor = get(mouseX,mouseY,PApplet.parseInt(side),PApplet.parseInt(side));
  image(cursor,450,450,50,50);

}

//keys are squares in roctal from upper left
//four rows of eight, uppre case grabs a key lower 
//case prints a key and mouse click selects "text" location

public void keyPressed(){
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
    letterIndex = PApplet.parseInt(key) - 0141;   
    ones = letterIndex&7;
    eights = (letterIndex>>3)&7;
    currentGlyph = get(PApplet.parseInt(side*ones),PApplet.parseInt(side*eights),PApplet.parseInt(side),PApplet.parseInt(side));
    image(img,0,0,800,500);
    image(currentGlyph,textX + writeSide*(keyIndex%20),textY + writeSide*PApplet.parseInt(keyIndex/20),PApplet.parseInt(writeSide),PApplet.parseInt(writeSide));
    img = get(0,0,800,500);
    keyIndex++;
 }
 else{
}

 if(key >= 0101 && key <= 0132){
    letterIndex = PApplet.parseInt(key) - 0101;   
    ones = letterIndex&7;
    eights = (letterIndex>>3)&7;
    currentGlyph = cursor;
    
    image(img,0,0,800,500);

    image(currentGlyph,PApplet.parseInt(side*ones),PApplet.parseInt(side*eights),PApplet.parseInt(side),PApplet.parseInt(side));
    
    img = get(0,0,800,500);
 }
 else{
}

if(key == ' '){
    keyIndex++;
}
}

public void mouseClicked(){
 
  textX = mouseX;
  textY = mouseY;
  keyIndex = 0;
  
}
  public void settings() {  size(800,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "image_sandbox2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
