PImage background1;
PImage background2;
PImage treasure;
PImage enemy;
PImage fighter;
PImage hp;

int hpX = floor(random(250));
int enemyX = 0;
int enemyY = floor(random(380));
int treasureX = floor(random(560));
int treasureY = floor(random(460));
int backgroundX = 0;

void setup () {
  size(640,480) ;  
  
  treasure = loadImage("img/treasure.png");
  
  enemy = loadImage("img/enemy.png");
  
  fighter = loadImage("img/fighter.png");
  
  hp = loadImage("img/hp.png");
  
  background1 = loadImage("img/bg1.png");
  
  background2 = loadImage("img/bg2.png");
}

void draw() {

  image(treasure ,treasureX, treasureY);
  
  image(enemy, enemyX, enemyY);
  enemyX += 2;
  enemyX %= 600;

  image(fighter, 580,235);
  
  fill(#FF0000);
  rect(9,9, hpX, 20);
  image(hp, 0,5);
  
  if(bgX<=641){
  
  image(bg1, bgX,0);
  image(bg2, bgX-641,0);
  
  }
  
  if(bgX>641){
  
  bgX=-641;
  
  }
  
  if(bgX<0){
  
  image(bg1, bgX,0);
  image(bg2, bgX+641,0);
  
  }
  
  bgX += 1;  
  println(bgX);
  println(bgX-641);
  
}
