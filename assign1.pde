PImage treasure;
PImage enemy;
PImage fighter;
PImage hp;

int hpX = floor(random(250));
int enemyX = 0;
int enemyY = floor(random(380));
int treasureX = floor(random(560));
int treasureY = floor(random(460));

void setup () {
  size(640,480) ;  
  
  treasure = loadImage("img/treasure.png");
  
  enemy = loadImage("img/enemy.png");
  
  fighter = loadImage("img/fighter.png");
  
  hp = loadImage("img/hp.png");
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
}
