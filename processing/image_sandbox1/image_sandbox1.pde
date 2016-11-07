

PImage img;
PImage cursor;
PImage a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z;
int keyIndex  = 0;

void setup(){
  img = loadImage("input.jpg");
 a = img;
 b=a;
 c=a;
 d=a;
 e=a;
 f=a;
 g=a;
 h=a;
 i=a;
 j=a;
 k=a;
 l=a;
 m=a;
 n=a;
 o=a;
 p=a;
 q=a;
 r=a;
 s=a;
 t=a;
 u=a;
 v=a;
 w=a;
 x=a;
 y=a;
 z=a;
 size(800,500);
}

void draw(){
  noFill();
  image(img,0,0,500,500);
  rect(mouseX,mouseY,60*500/2126,60*500/2126);
  cursor = img.get(mouseX*2126/500,mouseY*2126/500,60,60);
  image(cursor,400,0,60,60);
  image(a,0,0,50,50);
  image(b,50,0,50,50);
  image(c,100,0,50,50);
  image(d,150,0,50,50);
  image(e,200,0,50,50);
  image(f,250,0,50,50);
  image(g,300,0,50,50);
  image(h,350,0,50,50);
 
  image(i,0,50,50,50);
  image(j,50,50,50,50);
  image(k,100,50,50,50);
  image(l,150,50,50,50);
  image(m,200,50,50,50);
  image(n,250,50,50,50);
  image(o,300,50,50,50);
  image(p,350,50,50,50);

  image(q,0,100,50,50);
  image(r,50,100,50,50);
  image(s,100,100,50,50);
  image(t,150,100,50,50);
  image(u,200,100,50,50);
  image(v,250,100,50,50);
  image(w,300,100,50,50);
  image(x,350,100,50,50);

  image(y,0,150,50,50);
  image(z,50,150,50,50);

}

void keyPressed(){
  if(key == 'a'){
       image(a,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'b'){
       image(b,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'c'){
       image(c,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'd'){
       image(d,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'e'){
       image(e,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'f'){
       image(f,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'g'){
       image(g,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'h'){
       image(h,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'i'){
       image(i,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'j'){
       image(j,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'k'){
       image(k,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }

  if(key == 'l'){
       image(l,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'm'){
       image(m,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'n'){
       image(n,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'o'){
       image(o,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'p'){
       image(p,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'q'){
       image(q,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'r'){
       image(r,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 's'){
       image(s,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 't'){
       image(t,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'u'){
       image(u,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'v'){
       image(v,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'w'){
       image(w,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'x'){
       image(x,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'y'){
       image(y,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == 'z'){
       image(z,500 + (keyIndex%6)*50,int(keyIndex/6)*50,50,50);
       keyIndex ++;
  }
  if(key == ' '){
   keyIndex ++; 
  }



  if(key == 'A'){
    a = cursor;
  }
    if(key == 'B'){
    b = cursor;
  }
  if(key == 'C'){
    c = cursor;
  }
  if(key == 'D'){
    d = cursor;
  }
    if(key == 'E'){
    e = cursor;
  }
    if(key == 'F'){
    f = cursor;
  }
    if(key == 'G'){
    g = cursor;
  }
    if(key == 'H'){
    h = cursor;
  }
  if(key == 'I'){
    i = cursor;
  }
  if(key == 'J'){
    j = cursor;
  }
  if(key == 'K'){
    k = cursor;
  }
  if(key == 'L'){
    l = cursor;
  }
  if(key == 'M'){
    m = cursor;
  }
  if(key == 'N'){
    n = cursor;
  }
  if(key == 'O'){
    o = cursor;
  }
  if(key == 'P'){
    p = cursor;
  }
  if(key == 'Q'){
    q = cursor;
  }
  if(key == 'R'){
    r = cursor;
  }
  if(key == 'S'){
    s = cursor;
  }
  if(key == 'T'){
    t = cursor;
  }
  if(key == 'U'){
    u = cursor;
  }
  if(key == 'V'){
    v = cursor;
  }
  if(key == 'W'){
    w = cursor;
  }
  if(key == 'X'){
    x = cursor;
  }
  if(key == 'Y'){
    y = cursor;
  }
  if(key == 'Z'){
    z = cursor;
  }

}