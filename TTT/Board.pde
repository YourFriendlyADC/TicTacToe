void drawBoard() {
  // Board
  if (theme == 1) {
    fill(186, 228, 146);
  } else {
    fill(255, 217, 125);
  }
  strokeWeight(0);
  rect(25, 50, 450, 450, 15, 15, 15, 15); //
  strokeWeight(3);
  stroke(0);
  noFill();
  rect(25, 50, 450, 450, 15, 15, 15, 15);//
  fill(40, 54, 24);  
  line(25, 195, 475, 195);//
  line(25, 350, 475, 350);//
  line(170, 50, 170, 500);//
  line(325, 50, 325, 500);//
  boxIlumination();
  drawSign();  
  
  // Title  
  if (theme == 1) {
    fill(186, 228, 146);
  } else {
    fill(255, 217, 125);
  }
  //rect(174, 13, 140, 30, 20, 20, 20, 20);
  fill(0);
  textSize(20);
  text("Tic Tac Toe", 186, 35);
  
  // Small Board
  textSize(18);
  if (theme == 1) {
    fill(186, 228, 146);
  } else {
    fill(255, 217, 125);
  }
  strokeWeight(3);  
  settingWinner();
  //text(blueVictories, 180, 565);
  //text(redVictories, 200, 565); 
  
  // vs. P2 or vs. IA
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  rect(215, 530, 75, 25, 20, 20, 20, 20);
  fill(0);
  textSize(14);
  text(mode, 221, 547);
  if ((mouseX > 215) && (mouseX < 290) && (mouseY > 530) && (mouseY < 555) && (mousePressed) && (mode == "P1 vs. IA")) {
    mode = "P1 vs. P2";
    twoPlayers = true;
    reset();
  } else if ((mouseX > 215) && (mouseX < 290) && (mouseY > 530) && (mouseY < 555) && (mousePressed) && (mode == "P1 vs. P2")) {
    mode = "P1 vs. IA";
    twoPlayers = false;
    reset();
  }
  
  // Restart Button
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  stroke(0);
  strokeWeight(3); // 565
  ellipse(340, 540, 40, 40);
  image(reset, 328, 527);
  if ((mouseX > 320) && (mouseX < 360) && (mouseY > 520) && (mouseY < 560) && (mousePressed)) {
    reset();
  }
  
  // Settings Button  
  stroke(0);
  strokeWeight(3); // 565
  ellipse(390, 540, 40, 40);
  image(settings, 378, 527);
  // Changes the Tab
  if ((mouseX > 370) && (mouseX < 410) && (mouseY > 520) && (mouseY < 560) && (mousePressed)) {
    board = !board;
  }
  // Exit
  ellipse(440, 540, 35, 35);
  image(exit, 426, 527);
  if ((mouseX > 422) && (mouseX < 458) && (mouseY > 523) && (mouseY < 557) && (mousePressed)) {
    exit();
  }
}

void boxIlumination() {
  fill(255, 255, 202);
  if ((mouseX > 25) && (mouseX < 170) && (mouseY > 50) && (mouseY < 200)) { // Cuadros
    cursor(HAND);
    strokeWeight(0);
    rect(27, 52, 142, 142, 15, 0, 0, 0);
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 50) && (mouseY < 200)) { // Cuadro 2
    cursor(HAND);
    strokeWeight(0);
    rect(172, 52, 152, 142);
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 50) && (mouseY < 200)) { // Cuadro 3
    cursor(HAND);
    strokeWeight(0);
    rect(327, 52, 147, 142, 0, 15, 0, 0);
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 200) && (mouseY < 350)) { // Cuadro 4
    cursor(HAND);
    strokeWeight(0);
    rect(27, 197, 142, 152);
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 200) && (mouseY < 350)) { // Cuadro 5
    cursor(HAND);
    strokeWeight(0);
    rect(172, 197, 152, 152);
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 200) && (mouseY < 350)) { // Cuadro 6
      cursor(HAND);
      strokeWeight(0);
      rect(327, 197, 147, 152);
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 350) && (mouseY < 500)) { // Cuadro 7
    cursor(HAND);
    strokeWeight(0);
    rect(27, 352, 142, 147, 0, 0, 0, 15);
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 350) && (mouseY < 500)) { // Cuadro 8
    cursor(HAND);
    strokeWeight(0);
    rect(172, 352, 152, 147);
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 350) && (mouseY < 500)) { // Cuadro 9
    cursor(HAND);
    strokeWeight(0);
    rect(327, 352, 147, 147, 0, 0, 15, 0);
  } else {
    cursor(ARROW);
  }
}
