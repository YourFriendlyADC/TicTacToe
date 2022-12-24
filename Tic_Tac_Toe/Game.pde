void squaresDesign() {
  if (theme == 1) {
    fill(186, 228, 146);
  } else {
    fill(255, 217, 125);
  }  
  strokeWeight(0);
  rect(25, 25, 450, 450, 15, 15, 15, 15);
  // Cuadros
  setting();
}

void board() {
  // Tablero        
  strokeWeight(3);
  stroke(0);
  noFill();
  rect(25, 25, 450, 450, 15, 15, 15, 15);
  fill(40, 54, 24);
  line(25, 170, 475, 170);
  line(25, 325, 475, 325);
  line(170, 25, 170, 475);
  line(325, 25, 325, 475);
  // Title
  textSize(20);
  text("Tic Tac Toe", 500, 30, 220, 30);
  // Small Board
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  strokeWeight(3);
  line(500, 50, 625, 50);
  //rect(500, 120, 125, 125, 5, 5, 5, 5);
  textSize(18);
  fill(0);
  //text("Winner", 530, 95, 70, 30);
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  rect(500, 365, 130, 35, 15, 15, 15, 15);
  fill(0);
  textSize(16);
  switch (restartText) {
    case "Reiniciar":
      restartX = 530;
      break;
    case "Restart":
      restartX = 535;
      break;
    case "Ricominciare":
      restartX = 510;
      break;
    case "Recommencer":
      restartX = 508;
      break;
  }
  text(restartText, restartX, 377, 120, 30);
  // Setting Button
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  stroke(0);
  strokeWeight(3);
  ellipse(565, 435, 40, 40);
  image(settings, 553, 423);
  if ((mouseX > 545) && (mouseX < 585) && (mouseY > 415) && (mouseY < 455) && (mousePressed)) {
    game = !game;
  }
}
     
void drawX(int kx1, int ky1, int kx2, int ky2, int lx1, int ly1, int lx2, int ly2) {
  stroke(255, 104, 107);
  strokeWeight(7);
  line(kx1, ky1, kx2, ky2);
  line(lx1, ly1, lx2, ly2);
}

void drawO(int x, int y) {
  noFill();
  //stroke(204, 230, 244);
  stroke(128, 147, 241);
  strokeWeight(5);
  ellipse(x, y, 95, 95);
}

void restart() {
  if ((mouseX > 525) && (mouseX < 605) && (mouseY > 365) && (mouseY < 400) && (mousePressed)) {
    for(i = 0; i <= 8; i++) {
      c[i] = false;
    }
  }
}
