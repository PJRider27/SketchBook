PImage dust;
PImage ct;
PImage bg;
PImage start;
boolean game;
boolean gone1=true;
boolean gone2=true;
boolean gone3=true;
boolean gonestart=false;
boolean hit=false;
int counter=0;
float q= 60;
float r1 = random(1);
boolean first=true;


void setup(){
  size(1366,768);
  dust = loadImage("dust.jpg");
  ct = loadImage("ct.png");
  bg = loadImage("bg.jpg");
  start = loadImage("start.png");
  image(bg,0,0);
}

void draw(){
  //println(frameCount);
  //println(mouseX,mouseY);
  if(game){
    image(dust,0,0,1366,768);
    textSize(50);
    fill(255);
    image(start,450,150,500,500);
    image(dust,0,0,1366,768);
    if(hit){
       q = random(100);
  }
    

    if(r1<1 && first){
      image(dust,0,0,1366,768);
      gonestart=false;
      hit=false;
      image(ct,685,375,25,25);
      if(mousePressed){
        if(dist(699,386,mouseX,mouseY)<7){
          hit=true;
          image(dust,0,0,1366,768);
          first=false;
          gonestart=true;
          q= random(3);
    }
    }
    }
    if(q<1 && gonestart && gone3 && gone2){
      gone1=false;
      hit=false;
      image(ct,685,375,25,25);
      if(mousePressed){
        if(dist(699,386,mouseX,mouseY)<7){
          hit=true;
          image(dust,0,0,1366,768);
          first=false;
          gone1=true;
          q= random(3);
    }
    }
    }
    println(q);
    if(q>1 && q<2 && gone1 && gonestart && gone3){
      gone2=false;
      image(ct,1095,434,25,25);
      if(mousePressed){
        if(dist(1106,446,mouseX,mouseY)<7){
          hit=true;
          image(dust,0,0,1366,768);
          println("hit");
          gone2=true;
          q= random(3);
        }
      }
    }
                    
    if(q>2 && q<3 && gone2 && gonestart && gone1){
        image(ct,162,396,50,50);
        gone3=false;
        if(mousePressed){
          if(dist(187,421,mouseX,mouseY)<24){
            hit=true;
            image(dust,0,0,1366,768);
            println("hit");
            gone3=true;
            q = random(3);
        }
      }
    } 
    if(hit){
      counter++;
      println("hit");
    }
    text(counter,100,680);
    hit=false;
  }
  }

void mouseReleased(){
  if(mouseX>263 && mouseX<430 && mouseY<37){
    game=true;
  }

}
