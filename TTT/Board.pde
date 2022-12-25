void drawBoard() {
  // Board
  if (theme == 1) {
    fill(186, 228, 146);
  } else {
    fill(255, 217, 125);
  }
  strokeWeight(0);
  rect(25, 25, 450, 450, 15, 15, 15, 15);
  strokeWeight(3);
  stroke(0);
  noFill();
  rect(25, 25, 450, 450, 15, 15, 15, 15);
  fill(40, 54, 24);  
  line(25, 170, 475, 170);
  line(25, 325, 475, 325);
  line(170, 25, 170, 475);
  line(325, 25, 325, 475);
  boxIlumination();
  drawSign();  
  
  // Title
  fill(0);
  textSize(20);
  text("Tic Tac Toe", 500, 30, 220, 30);
  line(500, 50, 625, 50);
  
  // Small Board
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  strokeWeight(3);
  line(500, 207, 625, 207);
  settingWinner();
  
  // Restart Button  
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  stroke(0);
  strokeWeight(3); // 565
  ellipse(540, 285, 40, 40);
  image(reset, 528, 272);
  if ((mouseX > 520) && (mouseX < 560) && (mouseY > 265) && (mouseY < 305) && (mousePressed)) {
    for(i = 0; i <= 8; i++) {
      boxes[i] = 0 ;
    }
    ended = false;
  }
  
  // Settings Button
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  stroke(0);
  strokeWeight(3); // 565
  ellipse(590, 285, 40, 40);
  image(settings, 578, 273);
  // Changes the Tab
  if ((mouseX > 570) && (mouseX < 610) && (mouseY > 265) && (mouseY < 305) && (mousePressed)) {
    game = !game;
  }  
}

void boxIlumination() {
  fill(255, 255, 252);
  if ((mouseX > 25) && (mouseX < 170) && (mouseY > 25) && (mouseY < 170)) { // Cuadros
    cursor(HAND);
    strokeWeight(0);
    rect(27, 27, 142, 142, 15, 0, 0, 0);
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 25) && (mouseY < 170)) { // Cuadro 2
    cursor(HAND);
    strokeWeight(0);
    rect(172, 27, 152, 142);
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 25) && (mouseY < 170)) { // Cuadro 3
    cursor(HAND);
    strokeWeight(0);
    rect(327, 27, 147, 142, 0, 15, 0, 0);
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 4
    cursor(HAND);
    strokeWeight(0);
    rect(27, 172, 142, 152);
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 5
    cursor(HAND);
    strokeWeight(0);
    rect(172, 172, 152, 152);
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 6
      cursor(HAND);
      strokeWeight(0);
      rect(327, 172, 147, 152);
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 7
    cursor(HAND);
    strokeWeight(0);
    rect(27, 327, 142, 147, 0, 0, 0, 15);
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 8
    cursor(HAND);
    strokeWeight(0);
    rect(172, 327, 152, 147);
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 9
    cursor(HAND);
    strokeWeight(0);
    rect(327, 327, 147, 147, 0, 0, 15, 0);
  } else {
    cursor(ARROW);
  }
}
