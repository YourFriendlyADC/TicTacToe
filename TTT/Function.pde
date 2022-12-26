int calculateBox() {
  if ((mouseX > 25) && (mouseX < 170) && (mouseY > 50) && (mouseY < 200) && (mousePressed)) {
    return 0;
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 50) && (mouseY < 200) && (mousePressed)) {
    return 1;
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 50) && (mouseY < 200) && (mousePressed)) {
    return 2;
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 200) && (mouseY < 350) && (mousePressed)) {
    return 3;
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 200) && (mouseY < 350) && (mousePressed)) {
    return 4;
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 200) && (mouseY < 350) && (mousePressed)) {
    return 5;
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 350) && (mouseY < 500) && (mousePressed)) {
    return 6;
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 350) && (mouseY < 500) && (mousePressed)) {
    return 7;
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 350) && (mouseY < 500) && (mousePressed)) {
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
  switch (mode) {
    case "P1 vs. IA":
      if (calculateBox() != -1) {
        // IA
        if (player == 2) {
          random = int(random(0, 8));
          if (boxes[random] == 0 ) {
            boxes[random] = p;
            if (viewWinner() || isDraw()) {
              ended = true;
            } else {
              player = 1;
            }
          }
        }
        // Human
        if (player == 1) {
          if (boxes[calculateBox()] == 0 ) {
            boxes[calculateBox()] = p;
            if (viewWinner() || isDraw()) {
              ended = true;
            } else {
              player = 2;
            }
          }
        }
      }
      break;
    case "P1 vs. P2":
      if (calculateBox() != -1) {
        if (boxes[calculateBox()] == 0 ) {
          boxes[calculateBox()] = p;
          if (viewWinner() || isDraw()) {
            ended = true;
          } else if (player == 2){
            player = 1;
          } else {
            player = 2;                   
          }
        }
      }
      break;
  }
}

void drawSign() {
  strokeWeight(5);
  for (int i = 0; i < 9; i++) {
    if (boxes[i] == 1) {
      fill(188, 207, 255);
      stroke(128, 147, 241);
      ellipse((i % 3) * 150 + 100, (i / 3) * 150 + 125, 95, 95);
    }
    if (boxes[i] == 2) {
      fill(255, 164, 167);
      stroke(255, 104, 107);
      triangle((i % 3) * 150 + 100, (i / 3) * 150 + 75, (i % 3) * 150 + 50, (i / 3) * 150 + 175, (i % 3) * 150 + 150, (i / 3) * 150 + 175);
    }
  }
  stroke(0);  
  strokeWeight(3);
}

void settingWinner() {
  // Text configuration
  switch (turnText) {
    case "It's your turn":
    case "È il tuo turno":
    case "Sie sind dran":
      turnX = 54;
      break;
    case "Es tu turno":
      turnX = 62;
      break;
    case "C'est votre tour":
      turnX = 46;
      break;
  }
  switch (blueText) {
    case "Blue":
    case "Blau":
    case "Bleu":
    case "Azul":
      blueX = 95;
      break;
    case "Blu":
      blueX = 100;
      break;
  }
  switch (redText) {
    case "Red":
    case "Rot":
      redX = 100;
      break;
    case "Rosso":
    case "Rouge":
      redX = 90;
      break;         
    case "Rojo":
      redX = 92;
      break;
  }
  switch (winnerText) {
    case "wins":
      winnerBX = 70;
      winnerRX = 75;
      break;
    case "gana":
      winnerBX = 68;
      winnerRX = 68;
      break;
    case "vince":
      winnerBX = 70;
      winnerRX = 60;
      break;    
    case "gagne":
      winnerBX = 64;
      winnerRX = 56;
      break;
    case "gewinnt":      
      winnerBX = 52;
      winnerRX = 58;
      break;
  }
  switch (drawText) {
    case "Draw...":    
      drawX = 85;
      break;
    case "Empate...":
    case "Binden...":    
      drawX = 76;
      break;             
    case "Pareggio...":
      drawX = 70;
      break;
    case "Match nul...":
      drawX = 60;
      break;
  }
  // Setting
  if (!ended) {
    fill(0);
    text(turnText, turnX, 535);
    if (player == 1) {
      fill(50, 50, 250);
      text(blueText, blueX, 560);
    } else {
      fill(250, 50, 50);
      text(redText, redX, 560);
    }
  } else {
    if (viewWinner()) {
      if (player == 1) {
        fill(50, 50, 250);
        text(blueText + " " + winnerText + "!", winnerBX, 545);
        //redVictories++;        
      } else {
        fill(250, 50, 50);
        text(redText + " " + winnerText + "!", winnerRX, 545);
        //blueVictories++;        
      }
      //reset();
    } else if (isDraw()) {
      fill(0);
      text(drawText, drawX, 545);
    }
    fill(0);    
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

void reset() {
 for(i = 0; i <= 8; i++) {
     boxes[i] = 0 ;
   }
 ended = false; 
}
