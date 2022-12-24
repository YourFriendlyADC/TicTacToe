void setting(){
  if ((mouseX > 25) && (mouseX < 170) && (mouseY > 25) && (mouseY < 170)) { // Cuadros
    cursor(HAND);
    fill(255, 173, 173);
    strokeWeight(0);
    rect(25, 25, 145, 145, 15, 0, 0, 0);
    if (mousePressed) {
      c[0] = true;
    }
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 25) && (mouseY < 170)) { // Cuadro 2
      cursor(HAND);
      fill(255, 214, 165);
      strokeWeight(0);
      rect(170, 25, 155, 145);
      if (mousePressed) {
        c[1] = true;
      }
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 25) && (mouseY < 170)) { // Cuadro 3
      cursor(HAND);
      fill(253, 255, 182);
      strokeWeight(0);
      rect(325, 25, 150, 145, 0, 15, 0, 0);
      if (mousePressed) {
        c[2] = true;
      }
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 4
      cursor(HAND);
      // cambiar fill dependiendo de turno, azul o rojo
      fill(202, 255, 191);
      strokeWeight(0);
      rect(25, 170, 145, 155);
      if (mousePressed) {
        c[3] = true;
      }
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 5
      cursor(HAND);
      fill(155, 246, 255);
      strokeWeight(0);
      rect(170, 170, 155, 155);
      if (mousePressed) {
        c[4] = true;
      }
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 6
      cursor(HAND);
      fill(160, 196, 255);
      strokeWeight(0);
      rect(325, 170, 150, 155);
      if (mousePressed) {
        c[5] = true;
      }
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 7
      cursor(HAND);
      fill(189, 178, 255);
      strokeWeight(0);
      rect(25, 325, 145, 150, 0, 0, 0, 15);
      if (mousePressed) {
        c[6] = true;
      }
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 8
      cursor(HAND);
      fill(255, 198, 255);
      strokeWeight(0);
      rect(170, 325, 155, 150);
      if (mousePressed) {
        c[7] = true;
      }
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 9
      cursor(HAND);
      fill(255, 255, 252);
      strokeWeight(0);
      rect(325, 325, 150, 150, 0, 0, 15, 0);
      if (mousePressed) {
        c[8] = true;
      }
  } else {
    cursor(ARROW);
  }
  //
  if (c[0]) {
    i = 0;
    while(i < 8 && turn[i] != false) {
      if (turn[i] == false) {
        turn[i] = true;
        actualTurnP = i;
      } else {
        i = i + 1;
      }
    }
    if (actualTurnP % 2 == 0) {
      drawO(95, 95);
    } else {
      drawX(50, 50, 140, 140, 50, 140, 140, 50);
    }    
  }
  if (c[1]) {
    i = 0;
    while(i < 8 && turn[i] != true) {
      if (turn[i] == false) {
        turn[i] = true;
        actualTurnI = i;
      } else {
        i = i + 1;
      }     
    }
    if (actualTurnI % 2 != 0) {
      drawO(250, 95);
    } else {
      drawX(205, 50, 295, 140, 205, 140, 295, 50);
    }
  }
  if (c[2]) {
    i = 0;
    while(i < 8 && turn[i] != true) {
      if (turn[i] == false) {
        turn[i] = true;
        actualTurnP = i;
      } else {
        i = i + 1;
      }     
    }
    if (actualTurnP % 2 == 0) {
      drawO(400, 95);
    } else {
      drawX(355, 50, 445, 140, 355, 140, 445, 50);
    }       
  }
  if (c[3]) {
    i = 0;
    while(i < 8 && turn[i] != true) {
      if (turn[i] == false) {
        turn[i] = true;       
        actualTurnI = i;
      } else {
        i = i + 1;
      }     
    }
    if (actualTurnI % 2 != 0) {
      drawO(95, 250);
    } else {
      drawX(50, 205, 140, 295, 50, 295, 140, 205);
    }
  }
  if (c[4]) {
    drawO(250, 250);
    drawX(205, 205, 295, 295, 205, 295, 295, 205);
  }
  if (c[5]) {
    drawO(400, 250);
    drawX(355, 205, 445, 295, 355, 295, 445, 205);
  }
  if (c[6]) {
    drawO(95, 400);
    drawX(50, 355, 140, 445, 50, 445, 140, 355);
  }
  if (c[7]) {
    drawO(250, 400);
    drawX(205, 355, 295, 445, 205, 445, 295, 355);
  }
  if (c[8]) {
    drawO(400, 400);
    drawX(355, 355, 445, 445, 355, 445, 445, 355);
  }
}
