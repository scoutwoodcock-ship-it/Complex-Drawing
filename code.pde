void setup (){
  size (600,600);
  background (149,165,232);
}

void draw() {
  background (149,165,232);
  mountains ();
  snowballs ();
  snowman ();
  lodge ();
  
}
  
void mountains (){
  
stroke (89,68,74);
fill(89,68,74);
triangle (175,350,0,600,350,600);
triangle (500,250,350,600, 650,600);
triangle (350,450,150,600,500,600);
  
}

void snowman (){
  
stroke (193, 198, 219);
fill (193, 198, 219);

circle (175,575,50);
circle (175,535,30);
circle (175,510,20);

stroke (212,155,51);
fill (212,155,51);
triangle (175,509,175,511,190,510);

stroke (18,17,16);
line (160,535,140,510);
line (190,535,210,510);

fill (18,17,17);
rect (165,495,20,5);
rect (167,490,16,5);

}

void lodge (){

stroke (64,55,57);
fill(64,55,57);
rect (450,560,60,40);
rect (500,540,10,20);

fill (237,230,223);
rect (455,580,10,20);

fill (219,174,90);
rect (485,575,10,10);

fill (247,246,245);
circle (505,530,5);
circle (505,523,5);
circle (505,516,6);

}

void snowballs (){
stroke (193, 198, 219);
fill (193, 198, 219);
circle (50,50,8);
circle (200,80,8);
circle (400,150,8);
circle (300,400,8);
circle (100,300,8);
circle (550,30,8);

}
