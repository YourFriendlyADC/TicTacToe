int calculateBox() {
  if ((mouseX > 25) && (mouseX < 170) && (mouseY > 25) && (mouseY < 170) && (mousePressed)) {
    return 0;
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 25) && (mouseY < 170) && (mousePressed)) {
    return 1;
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 25) && (mouseY < 170) && (mousePressed)) {
    return 2;
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 170) && (mouseY < 325) && (mousePressed)) {
    return 3;
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 170) && (mouseY < 325) && (mousePressed)) {
    return 4;
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 170) && (mouseY < 325) && (mousePressed)) {
    return 5;
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 325) && (mouseY < 475) && (mousePressed)) {
    return 6;
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 325) && (mouseY < 475) && (mousePressed)) {
    return 7;
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 325) && (mouseY < 475) && (mousePressed)) {
    return 8;
  }
  return -1;
}

boolean viewWinner() {
  return (boxes[0] == player && boxes[1] == player && boxes[2] == player) ||
         (boxes[3] == player && boxes[4] == player && boxes[5] == player) ||
         (boxes[6] == player && boxes[7] == player && boxes[8] == player) ||
         (boxes[0] == player && boxes[3] == player && boxes[6] == player) ||
         (boxes[1] == player && boxes[4] == player && boxes[7] == player) ||
         (boxes[2] == player && boxes[5] == player && boxes[8] == player) ||
         (boxes[0] == player && boxes[4] == player && boxes[8] == player) ||
         (boxes[2] == player && boxes[4] == player && boxes[6] == player);
}

void setTrain(int p) {
  if (calculateBox() != -1) {
    // IA
    //if (player == 2) {
    //  int rdm = int(random(0, 8));
    //  if (boxes[rdm] == 0 ) {
    //    boxes[rdm] = p;
    //    if (viewWinner() || isDraw()) {
    //      ended = true;
    //    } else if (player == 1) {
    //      player = 2;
    //    } else {
    //      player = 1;
    //    }
    //  }
    //}
    // Human
    //if (player == 1) {
      if (boxes[calculateBox()] == 0 ) {
        boxes[calculateBox()] = p;
        if (viewWinner() || isDraw()) {
          ended = true;
        } else if (player == 1) {
          player = 2;
        } else {
          player = 1;
        }
      }
    //}
  }
}

void drawSign() {
  noFill();
  strokeWeight(5);
  for (int i = 0; i < 9; i++) {
    if (boxes[i] == 1) {
      stroke(128, 147, 241);
      ellipse((i % 3) * 150 + 100, (i / 3) * 150 + 100, 95, 95);
    }
    if (boxes[i] == 2) {
      stroke(255, 104, 107);
      ellipse((i % 3) * 150 + 100, (i / 3) * 150 + 100, 95, 95);
    }
  }
  stroke(0);  
  strokeWeight(3);
}

void settingWinner() {
  if (!ended) {
    fill(0);
    text("Turn", 538, 198);
    if (player == 1) {
      fill(50, 50, 250);
      text("Blue", 540, 230);
    } else {
      fill(250, 50, 50);
      text("Red", 545, 230);
    }
  } else {
    if (viewWinner()) {
      if (player == 1) {
        fill(50, 50, 250);
        text("Blue" + " wins!!", 508, 198);
      } else {
        fill(250, 50, 50);
        text("Red" + " wins!!", 510, 198);
      }    
    } else if (isDraw()) {
      fill(0);
      text("Draw...", 525, 198);
    }
    fill(0);
    text("Press Restart", 495, 230);
  }
}

boolean isDraw() {
  int noZeros = 0;
  i = 0;
  while (i <= 8) {    
    if (boxes[i] != 0) {
      noZeros++;
    }
    i++;
  }
  if (noZeros == 9) {
    return true;
  }
  return false;
}
