color bgColor = color (235, 230, 230);
color currentFillColor = color (0, 0, 0, 1);

float currentSpeed = -1;
float currentSpeedLimit = -1;
float newSpeedLimit = -1;
float PROGRESSBAR_OVERSHOOT_SIZE = -1;
float PROGRESSBAR_WIDTH = -1 ;
float PROGRESSBAR_HEIGHT = -1 ;
float PROGRESSBAR_INTERVAL_SIZE = -1;
float PROGRESSBAR_INTERVAL_COUNT = -1;
float MARGIN = -1;
boolean breakPedal = false;
boolean gasPedal = false;
boolean draw = false;



int j=960;
int maxWidth = 960;
float delta = 0;
void setup() {
  size(960, 540);
  init();
}

void init() {

  background(bgColor);
  currentFillColor = color (0, 0, 0, 1);
  currentSpeed = 80;
  currentSpeedLimit = 80;
  newSpeedLimit = 60;
  MARGIN = 10;
  PROGRESSBAR_OVERSHOOT_SIZE = ((width - 2 * MARGIN) / 6); // Size for svershooting
  PROGRESSBAR_HEIGHT = height / 8;
  PROGRESSBAR_WIDTH = (width - 2 * MARGIN) -  PROGRESSBAR_OVERSHOOT_SIZE * 2; // Width of Progress Bar
  PROGRESSBAR_INTERVAL_COUNT = abs(currentSpeedLimit - newSpeedLimit); // number of intervals
  PROGRESSBAR_INTERVAL_SIZE = PROGRESSBAR_WIDTH / PROGRESSBAR_INTERVAL_COUNT; // Width for 1km/h

  println("PROGRESSBAR_OVERSHOOT_SIZE="+PROGRESSBAR_OVERSHOOT_SIZE +"   PROGRESSBAR_WIDTH="+PROGRESSBAR_WIDTH +"   Interval=" + PROGRESSBAR_INTERVAL_SIZE);
}

void draw() {
  
  // outline progress bar
  noFill();
  rect(MARGIN+PROGRESSBAR_OVERSHOOT_SIZE, (height / 2) - (PROGRESSBAR_HEIGHT/2), PROGRESSBAR_WIDTH+2, PROGRESSBAR_HEIGHT+2);
  fill(bgColor);
  
  // override BG for indicator
  for (int i =0; i<width; i++) {
    fill(bgColor);
    noStroke();
    rect(i, ((height / 2) - (PROGRESSBAR_HEIGHT*1.5))-1, PROGRESSBAR_INTERVAL_SIZE, PROGRESSBAR_HEIGHT);
  }
  // actual segment drawing: 
  fill(currentFillColor);
  stroke(0);
  float delta = currentSpeedLimit - currentSpeed;
  rect(delta*PROGRESSBAR_INTERVAL_SIZE+(MARGIN+PROGRESSBAR_OVERSHOOT_SIZE+1), ((height / 2) - (PROGRESSBAR_HEIGHT*1.5))-1, PROGRESSBAR_INTERVAL_SIZE, PROGRESSBAR_HEIGHT);
  statusText();
  if (draw) {
    drawPB(currentSpeed, breakPedal, gasPedal);
    println("drawing");
  }
}



void drawPB(float speed, boolean breaks, boolean gas ) {

  if (breaks && !gas) {
    currentFillColor = color (255, 0, 0); // red
  } else if (!breaks && gas) {
    currentFillColor = color(255, 255, 0); // yellow
  } else if (breaks && gas) {
    fill(255, 153, 0); // orange
  } else if (!breaks && !gas) {
    currentFillColor = color(0, 0, 255); // blue
  }
  fill(currentFillColor);

  // Cast to int for now, makes it easier
  float delta = currentSpeedLimit - (int) speed;

  rect(delta*PROGRESSBAR_INTERVAL_SIZE+(MARGIN+PROGRESSBAR_OVERSHOOT_SIZE+1), (height / 2) - (PROGRESSBAR_HEIGHT/2)+1, PROGRESSBAR_INTERVAL_SIZE, PROGRESSBAR_HEIGHT);
  draw = false;
}
void statusText() {
  
  fill(bgColor);
  noStroke();
  rect(0, 0 , 200, 100, 255);
  textSize(32);
  fill( 0, 0, 250);
  if (breakPedal && !gasPedal) {
    text("brake", 10, 90);
  } else if (!breakPedal && gasPedal) {
    text("accelerate", 10, 90);
  } else if (!breakPedal && !gasPedal) {
    text("coast", 10, 90);
  }
}
void keyPressed() {
  //println("keycode "+keyCode); 
  if (key == CODED) {
    if (keyCode == RIGHT) {
      currentSpeed--;
    } else if (keyCode == LEFT) {
      println("LEFT");
      currentSpeed++;
    }
  } else {

    if (key == 'a') {
      currentFillColor = color(255, 255, 0); // yellow
      gasPedal = true;
      breakPedal = false;
    } else if (key == 'c') {
      currentFillColor = color(0, 0, 255); // blue
      gasPedal = false;
      breakPedal = false;
    } else if (key == 'b') {
      currentFillColor = color(255, 0, 0); // red
      gasPedal = false;
      breakPedal = true;
    } else if (key == 'r') {
      init();
    } else if (keyCode == 32) {
      println("p key");
      draw = true;
    }
  }
}