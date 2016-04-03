class Poof{
  PImage core;
  PImage leftArm;
  PImage rightArm;
  PImage crown;
  PImage leftFoot;
  PImage rightFoot;
  PImage wingL;
  PImage wingR;
  PImage leftEyebrow;
  PImage rightEyebrow;
  PImage leftEyelid;
  PImage rightEyelid;
  PImage mouth;
  
  PShape leftIris;
  PShape rightIris;
  PShape leftPupil;
  PShape rightPupil;
  PShape reflejo1,reflejo2,reflejo3;
  
  int grados;
  
  int xRightArm,yRightArm,xLeftArm,yLeftArm;
  int xRightFoot, yRightFoot, xLeftFoot, yLeftFoot;
  
  Poof(){
    core = loadImage("cuerpo.png");
    leftFoot = loadImage("pieDerecho.png");
    rightFoot = loadImage("pieIzquierdo.png");
    leftArm = loadImage("brazoDerecho.png");
    rightArm = loadImage("brazoIzquierdo.png");
    crown = loadImage("corona.png");
    wingL = loadImage("ala.png");
    wingR = loadImage("ala.png");
    leftEyebrow = loadImage("cejaSeparada.png");
    rightEyebrow = loadImage("cejaSeparada.png");
    leftEyelid = loadImage("pestanasIzquierdas.png");
    rightEyelid = loadImage("pestanasDerechas.png");
    mouth = loadImage("boca.png");
    
    
    pushStyle();
    fill(207,121,240);
    noStroke();
    rightIris = createShape(ELLIPSE,0,0,70,70);
    leftIris = createShape(ELLIPSE,0,0,70,70);
    popStyle();
    
    pushStyle();
    fill(0);
    rightPupil = createShape(ELLIPSE,0,0,35,35);
    leftPupil = createShape(ELLIPSE,0,0,35,35);
    popStyle();
    
    fill(255);
    noStroke();
    reflejo1 = createShape(ELLIPSE,0,0,5,5);
    reflejo2 = createShape(ELLIPSE,0,0,5,5);
    reflejo3 = createShape(ELLIPSE,0,0,5,5);
    reflejo1.setVisible(false);
    reflejo2.setVisible(false);
    reflejo3.setVisible(false);
    
    grados = 0;
    xRightArm = 0;
    yRightArm = 0;
    xLeftArm = 0;
    yLeftArm = 0;
    
    xRightFoot = 0;
    yRightFoot = 0;
    xLeftFoot = 0;
    yLeftFoot = 0;

    
  }
  
  public void flota(){
    imageMode(CENTER);
    drawLeftFoot();
    //image(leftFoot,175,470);
    drawLeftArm();
    drawRightFoot();
    //image(rightFoot,300,470);
    image(core,250,250);
    drawRightArm();

    drawLeftEyebrow(grados);
    drawRightEyebrow(grados);
    drawMouth(grados);
    drawEyes();
    image(leftEyelid,75,150);
    image(rightEyelid,360,165);
    

    
  }
  public void drawEyes(){
    
    pushMatrix();
      translate(150,230);
      shape(leftIris);
      shape(leftPupil);
      shape(reflejo1,15,-15);
      shape(reflejo2,-15,-15);
      shape(reflejo3,0,15);
    popMatrix();
    
    pushMatrix();
      translate(280,230);
      shape(rightIris);
      shape(rightPupil);
      shape(reflejo2,15,-15);
      shape(reflejo1,-15,-15);
      shape(reflejo3,0,15);
    popMatrix();
  }
  
  public void drawRightArm(){
    image(rightArm,400+xRightArm,390+yRightArm);
  }
  
  public void drawLeftArm(){
    image(leftArm,55+xLeftArm,380+yLeftArm);
  }
  
  public void drawRightFoot(){
    image(rightFoot,310+xRightFoot,470+yRightFoot);
  }
  
  public void drawLeftFoot(){
    image(leftFoot,175+xLeftFoot,470+yLeftFoot);
  }

  public void drawLeftEyebrow(int grados){
    pushMatrix();
    translate(140,130);
    rotate(radians(grados));
    image(leftEyebrow,0,0);
    popMatrix();
  }
  public void drawRightEyebrow(int grados){
    
    pushMatrix();
    translate(300,130);
    rotate(radians(grados));
    image(rightEyebrow,0,0);
    popMatrix();
  }
  
  public void drawMouth(int grados){
    pushMatrix();
    translate(220,320);
    rotate(radians(grados));
    image(mouth,0,0);
    popMatrix();
  }
  
  void sad(){
    grados += 5;
    xRightArm -= 1;
    yRightArm += 1;
    
    xLeftArm += 1;
    yLeftArm += 1;
    
    xRightFoot -= 1;
    xLeftFoot += 1;
    
    
    
    pushMatrix();
    leftIris.scale(1.012);
    rightIris.scale(1.012);
    leftPupil.scale(1.03);
    rightPupil.scale(1.03);
    reflejo1.scale(1.055);
    reflejo2.scale(1.035);
    reflejo3.scale(1.025);
    reflejo1.setVisible(true);
    reflejo2.setVisible(true);
    reflejo3.setVisible(true);
    popMatrix();
    

  }
  
  
}