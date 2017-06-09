int h;   
int m;  
int s;
int ms;
int d;
int possiblePoints;
float angle;
float zone = QUARTER_PI/2;
int maxPoints;
int totalScore;

void setup() {
  size(1080, 280);
  smooth();
  strokeWeight(4);
  background(255);
  textSize(15);
}

void draw() {
  background(255);
   angle = map(millis()%1000, 0, 1000, 0, TWO_PI);
  fill(0, 0, 100);
  ellipse(125, 125, 100, 100);   
  fill(10, 50, 10);
  arc(125, 125, 100, 100, -zone, zone, PIE);
  println(angle);
  if (angle > TWO_PI-zone || angle < zone) {
    possiblePoints = 1;
    stroke(255);
  } else {
    possiblePoints = 0;
    stroke(255);
  }

  line(125, 125, 125 + cos(angle) * 45, 125 + sin(angle) * 45);
  text("Press spacebar in the green zone",50,200);
  
  
    text(totalScore, 125, 50);
  
  translate(240, 40);
  updateTime();
  fill(0);

  float seconds = map(s, 0, 60, 30, 200);
  float minutes = map(m, 0, 60, 30, 200);
  float hours   = map(h, 0, 23, 30, 200);
  float days    = map(d, 0, 31, 30, 200);

  stroke(0);
  ellipse(100, 100, 200, 200);
  //stroke(255);
  fill(100);
  ellipse(100, 100, seconds, seconds);
  fill(100, 20, 30);
  textSize(max(s,1));
  float tw= textWidth(str(s));
  text(s, 100-(.5*tw), 100+(.5*s));

  stroke(0);
  fill(0);
  ellipse(300, 100, 200, 200);
  fill(100);
  ellipse(300, 100, minutes, minutes);
  fill(100, 20, 30);
  //text(m, 294, 100);
  textSize(max(m,1));
  float tw2= textWidth(str(m));
  text(m,300-(.5*tw2),100+(.5*m));


  stroke(0);
  fill(0);
  ellipse(500, 100, 200, 200);
  fill(100);
  ellipse(500, 100, hours, hours);
  fill(100, 20, 30);
  //text(h, 493, 100);
  textSize(max(h,1));
  float tw3= textWidth(str(h));
  text(h,500-(.5*tw3),100+(.5*h));


  stroke(0);
  fill(0);
  ellipse(700, 100, 200, 200);
  fill(100);
  ellipse(700, 100, days, days);
  fill(100, 20, 30);
//  text(d, 692, 100);
  textSize(max(d,1));
  float tw4 = textWidth(str(d));
  text(d,700-(.5*tw4),100+(.5*d));

  
}

void updateTime() {
  h = hour();   
  m = minute();  
  s = second();
  d = day();
}
void keyReleased() {
  if (key == ' ') {
    totalScore += possiblePoints;
  }
}
