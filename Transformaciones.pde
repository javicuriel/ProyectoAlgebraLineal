Poof bebe;
boolean sad;
int cuenta;

void setup(){
  size(700,700);
  bebe = new Poof();
  sad = false;
  cuenta = 0;

}

void draw(){
  background(255);
  translate(60,60);
  bebe.flota();
  if (keyPressed){
    if(key == 's' && cuenta < 35){
      cuenta++;
      bebe.sad();
      print(cuenta);
    }
    if(key == 'n' && cuenta > 0){
      cuenta--;
      bebe.sadNormal();
      print(cuenta);
    }
  }
  

  
  

}


void happiness (){
  boolean rot = true;
  pushMatrix();
  translate(mouseX,mouseY);
  fill(0);
  rect(0,0,100,100);
  if(rot == true)
    rotate(radians(45));
  popMatrix();
  
}

void sadness(){
  
  
  fill(100);
  rect(50,50,100,100);
}

void other(){
  fill(255);
  rect(50,50,100,100);
}