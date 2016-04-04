Poof bebe;
boolean sad;
int cuenta;

//*********************** parte Yoco ***********************
boolean anima;
//*********************** parte Yoco ***********************

void setup() {
  size(700, 700);
  bebe = new Poof();
  sad = false;
  cuenta = 0;
  
  //*********************** parte Yoco ***********************
  anima = false;
  //*********************** parte Yoco ***********************
}

void draw() {
  background(255);
  translate(60, 60);

  bebe.flota();
  if (keyPressed) {
    if (key == 's' && cuenta < 35) {
      cuenta++;
      bebe.sad();
    }
    if (key == 'n' && cuenta > 0) {
      cuenta--;
      bebe.sadNormal();
    }
  }

  //*********************** parte Yoco *********************** 
  if(anima){
    background(255);
    bebe.move3Parts();
    bebe.flota2();
    bebe.moveRightArm();
    bebe.extremeHappiness();
  }
  else {
    bebe.extremeHappinessNormal();
  }
  //*********************** parte Yoco *********************** 
  
}

void happiness () {
  boolean rot = true;
  pushMatrix();
  translate(mouseX, mouseY);
  fill(0);
  rect(0, 0, 100, 100);
  if (rot == true)
    rotate(radians(45));
  popMatrix();
}

void sadness() {
  fill(100);
  rect(50, 50, 100, 100);
}

void other() {
  fill(255);
  rect(50, 50, 100, 100);
}

//*********************** parte Yoco *********************** 
void keyPressed() {
  
  if(key == 'e'){
    
    if(anima == false){
      anima = true;
    }
    else{
      anima = false;
    }     
 }
 
}//cierre de keyPressed
//*********************** parte Yoco ***********************