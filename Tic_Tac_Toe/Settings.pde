//Settings
void settingsMenu() {
  // Title
  fill(0);
  strokeWeight(3);
  textSize(25);
  switch (settingsText) {
    case "Settings":
      settingsX = width / 2 - 52;
      break;
    case "Ajustes":
      settingsX = width / 2 - 46;
      break;
    case "Impostazioni":
      settingsX = width / 2 - 85;
      break;
    case "Paramètres":
      settingsX = width / 2 - 72;
      break;
  }
  text(settingsText, settingsX, 30, 180, 40);
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }  
  ellipse(width / 2, 320, 50, 50);
  if (volume) {
    image(vol, width / 2 - 18, 302);
  } else {
    image(noVol, width / 2 - 18, 302);
  }
  rect(width / 2 - 70, 100, 140, 45, 25, 25, 25, 25);
  rect(width / 2 - 70, 160, 140, 45, 25, 25, 25, 25);
  rect(width / 2 - 70, 220, 140, 45, 25, 25, 25, 25);
  // Texts
  fill(0);
  textSize(20);
  switch (themeText) {
    case "Theme":
    case "Thème":
      themeX = width / 2 - 35;
      break;
    case "Tema":
      themeX = width / 2 - 28;
      break;
  }
  text(themeText, themeX, 115, 100, 40);
  switch (lgText) {
    case "Language":        
      lgX = width / 2 - 48;
      break;
    case "Lingua":
    case "Idioma":
    case "Langue":
      lgX = width / 2 - 35;
      break;
  }
  text(lgText, lgX, 175, 120, 40);
  switch (exitText) {
    case "Exit":
      exitX = width / 2 - 22;
      break;
    case "Salir":
      exitX = width / 2 - 24;
      break;
    case "Uscita":
    case "Sortie":
      exitX = width / 2 - 30;
      break;
  }
  text(exitText, exitX, 235, 70, 40);
  textSize(16);
  text("Created by: YourFriendlyADC", 220, 480, 420, 30);
  // Theme
  if ((mouseX > width / 2 - 70) && (mouseX < width / 2 + 70) && (mouseY > 100) && (mouseY < 145) && (mousePressed)) {
    themeBoard = true;
  } else if (!((mouseX > width / 2 - 70) && (mouseX < width / 2 + 160) && (mouseY > 100) && (mouseY < 145))) {
    themeBoard = false;
  }
  if (themeBoard) {
    strokeWeight(2);
    // Theme 1
    fill(254, 250, 224);
    rect(width / 2 + 80, 105, 13, 35, 10, 0, 0, 10);
    fill(221, 161, 94);
    rect(width / 2 + 93, 105, 14, 35);
    fill(186, 228, 146);
    rect(width / 2 + 107, 105, 13, 35, 0, 10, 10, 0);
    // Theme 2
    fill(241, 250, 238);
    rect(width / 2 + 120, 105, 13, 35, 10, 0, 0, 10);
    fill(69, 123, 157);
    rect(width / 2 + 133, 105, 14, 35);
    fill(255, 217, 125);
    rect(width / 2 + 147, 105, 13, 35, 0, 10, 10, 0);
    //
    strokeWeight(0);
    fill(221, 161, 94);
    strokeWeight(3);
    noFill();
    line(width / 2 + 70, 122, width / 2 + 80, 122);
    rect(width / 2 + 80, 105, 40, 35, 10, 10, 10, 10);
    rect(width / 2 + 120, 105, 40, 35, 10, 10, 10, 10);
    if ((mouseX > width / 2 + 80) && (mouseX < width / 2 + 120) && (mouseY > 105) && (mouseY < 140) && (mousePressed)) {
      theme = 1;
    } else if ((mouseX > width / 2 + 120) && (mouseX < width / 2 + 160) && (mouseY > 105) && (mouseY < 140) && (mousePressed)) {
      theme = 2;
    }
  }
  // Language
  if ((mouseX > width / 2 - 70) && (mouseX < width / 2 + 70) && (mouseY > 160) && (mouseY < 205) && (mousePressed)) {
    lgBoard = true;
  } else if (!((mouseX > width / 2 - 70) && (mouseX < width / 2 + 240) && (mouseY > 160) && (mouseY < 205))) {
    lgBoard = false;
  }
  if (lgBoard) {
    // Flags
    strokeWeight(2);
    // ES
    fill(220, 30, 30);
    rect(width / 2 + 80, 170, 40, 25, 5, 5, 5, 5);
    fill(220, 220, 30);
    rect(width / 2 + 80, 177, 40, 11);
    // EN
    fill(50, 50, 210);
    rect(width / 2 + 120, 170, 40, 25, 5, 5, 5, 5);
    fill(255);
    rect(width / 2 + 120, 178, 40, 8);
    rect(width / 2 + 136, 170, 8, 25);
    stroke(255);
    strokeWeight(4);
    line(width / 2 + 120, 170, width / 2 + 160, 195);
    line(width / 2 + 120, 195, width / 2 + 160, 170);
    stroke(0);
    strokeWeight(0);
    fill(220, 50, 50);
    rect(width / 2 + 139, 170, 3, 25);
    rect(width / 2 + 120, 181, 40, 3);
    stroke(220, 50, 50);
    strokeWeight(2);
    line(width / 2 + 120, 170, width / 2 + 160, 195);
    line(width / 2 + 120, 195, width / 2 + 160, 170);
    // IT
    stroke(0);
    strokeWeight(2);
    fill(70, 200, 70);
    rect(width / 2 + 160, 170, 13, 25, 5, 0, 0, 5);
    fill(244);
    rect(width / 2 + 173, 170, 14, 25);
    fill(240, 40, 40);
    rect(width / 2 + 187, 170, 13, 25, 0, 5, 5, 5);
    // FR
    stroke(0);
    strokeWeight(2);
    fill(70, 70, 200);
    rect(width / 2 + 200, 170, 13, 25, 5, 0, 0, 5);
    fill(244);
    rect(width / 2 + 213, 170, 14, 25);
    fill(240, 40, 40);
    rect(width / 2 + 227, 170, 13, 25, 0, 5, 5, 0);
    //
    strokeWeight(0);
    fill(221, 161, 94);
    strokeWeight(3);
    noFill();
    line(width / 2 + 70, 182, width / 2 + 80, 182);
    rect(width / 2 + 80, 170, 160, 25, 5, 5, 5, 5);
    line(width / 2 + 120, 170, width / 2 + 120, 195);
    line(width / 2 + 160, 170, width / 2 + 160, 195);
    // Language selection width / 2 + 80, 170, 40, 25
    if ((mouseX > width / 2 + 80) && (mouseX < width / 2 + 120) && (mouseY > 170) && (mouseY < 195) && (mousePressed)) {
      language = "ES";
    } else if ((mouseX > width / 2 + 120) && (mouseX < width / 2  + 160) && (mouseY > 170) && (mouseY < 195) && (mousePressed)) {
      language = "EN";
    } else if ((mouseX > width / 2 + 160) && (mouseX < width / 2 + 200) && (mouseY > 170) && (mouseY < 195) && (mousePressed)) {
      language = "IT";
    } else if ((mouseX > width / 2 + 200) && (mouseX < width / 2 + 240) && (mouseY > 170) && (mouseY < 195) && (mousePressed)) {
      language = "FR";
    }
  }
  // Back
  strokeWeight(3);
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  rect(width - 100, height - 50, 80, 30, 15, 15, 15, 15);
  textSize(16);
  fill(0);
  switch (backText) {
    case "Back":
      backX = width - 80;
      break;
    case "Atrás":
      backX = width - 82;
      break;
    case "Revenir":
      backX = width - 90;
      break;
    case "Indietro":          
      backX = width - 92;
      break;
  }
  text(backText, backX, height - 30);
  if ((mouseX > width - 100) && (mouseX < width - 20) && (mouseY > height - 50) && (mouseY < height - 20) && (mousePressed)) {
    game = true;
  }
  // Exit
  if ((mouseX > width / 2 - 70) && (mouseX < width / 2 + 70) && (mouseY > 220) && (mouseY < 265) && (mousePressed)) {
    exit();
  }
  // Sound
  if (((mouseX > width / 2 - 25) && (mouseX < width / 2 + 25) && (mouseY > 295) && (mouseY < 345) && (mousePressed)) && volume) {
    volume = false;
  } else if (((mouseX > width / 2 - 25) && (mouseX < width / 2 + 25) && (mouseY > 295) && (mouseY < 345) && (mousePressed)) && !volume) {
    volume = true;
  }
}
