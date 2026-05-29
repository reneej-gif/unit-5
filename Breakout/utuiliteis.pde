void resetRound(){
   float startDirection = random(-3, 3);
  if (random(1) > 0.5) {
    vx = 3; 
  } else {
    vx = -3;
  }
  vy = startDirection;
}
