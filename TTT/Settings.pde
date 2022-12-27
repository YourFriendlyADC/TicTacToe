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
    case "Konfigurationen":
      settingsX = width / 2 - 105;
      break;
  }
  text(settingsText, settingsX, 30, 230, 40);
  // Buttons
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }  
  rect(width / 2 - 70, 140, 140, 45, 25, 25, 25, 25);
  rect(width / 2 - 70, 200, 140, 45, 25, 25, 25, 25);  
  ellipse(width / 2, 320, 50, 50);
  // Texts
  fill(0);
  if (volume) {
    image(vol, width / 2 - 18, 302);
  } else {
    image(noVol, width / 2 - 18, 302);
  }
  textSize(20);
  switch (themeText) {
    case "Theme":
    case "Thème":
    case "Thema":
      themeX = width / 2 - 35;
      break;
    case "Tema":
      themeX = width / 2 - 28;
      break;
  }
  text(themeText, themeX, 155, 100, 40);
  switch (lgText) {
    case "Language":        
      lgX = width / 2 - 48;
      break;
    case "Lingua":
    case "Idioma":
    case "Langue":
      lgX = width / 2 - 35;
      break;
    case "Sprache":
      lgX = width / 2 - 42;
      break;
  }
  text(lgText, lgX, 215, 120, 40);
  textSize(16);
  text("Developed by: YourFriendlyADC", width / 2 - 140, height - 10);
  // Theme
  if ((mouseX > width / 2 - 70) && (mouseX < width / 2 + 70) && (mouseY > 95) && (mouseY < 185) && (mousePressed)) {
    themeBoard = true;
  } else if (!((mouseX > width / 2 - 70) && (mouseX < width / 2 + 70) && (mouseY > 95) && (mouseY < 185))) {
    themeBoard = false;
  }
  if (themeBoard) {
    strokeWeight(2);
    // Theme 1
    fill(254, 250, 224);
    rect(width / 2 - 40, 95, 13, 30, 10, 0, 0, 10);
    fill(221, 161, 94);
    rect(width / 2 - 27, 95, 14, 30);
    fill(186, 228, 146);
    rect(width / 2 - 13, 95, 13, 30, 0, 10, 10, 0);
    // Theme 2
    fill(241, 250, 238);
    rect(width / 2, 95, 13, 30, 10, 0, 0, 10);
    fill(69, 123, 157);
    rect(width / 2 + 13, 95, 14, 30);
    fill(255, 217, 125);
    rect(width / 2 + 27, 95, 13, 30, 0, 10, 10, 0);
    //
    strokeWeight(0);
    fill(221, 161, 94);
    strokeWeight(3);
    noFill();    
    line(width / 2, 95, width / 2, 140);
    rect(width / 2 - 40, 95, 80, 30, 10, 10, 10, 10);
    //rect(width / 2, 95, 40, 30, 10, 10, 10, 10);
    if ((mouseX > width / 2 - 40) && (mouseX < width / 2) && (mouseY > 95) && (mouseY < 125) && (mousePressed)) {
      theme = 1;
    } else if ((mouseX > width / 2) && (mouseX < width / 2 + 40) && (mouseY > 95) && (mouseY < 125) && (mousePressed)) {
      theme = 2;
    }
  }
  // Language
  if ((mouseX > width / 2 - 100) && (mouseX < width / 2 + 100) && (mouseY > 200) && (mouseY < 280) && (mousePressed)) {
    lgBoard = true;
  } else if (!((mouseX > width / 2 - 100) && (mouseX < width / 2 + 100) && (mouseY > 200) && (mouseY < 280))) {
    lgBoard = false;
  }
  if (lgBoard) {
    // Flags
    strokeWeight(2);
    // ES
    fill(220, 30, 30);
    rect(width / 2 - 100, 255, 40, 25, 5, 5, 5, 5);
    fill(220, 220, 30);
    rect(width / 2 - 100, 262, 40, 11);
    // EN
    fill(50, 50, 210);
    rect(width / 2 - 60, 255, 40, 25, 5, 5, 5, 5);
    fill(255);
    rect(width / 2 - 60, 264, 40, 8);
    rect(width / 2 - 44, 255, 8, 25);
    stroke(255);
    strokeWeight(4); 
    line(width / 2 - 60, 255, width / 2 - 20, 280);
    line(width / 2 - 60, 280, width / 2 - 20, 255);
    stroke(0);
    strokeWeight(0);
    fill(220, 50, 50);
    rect(width / 2 - 60, 267, 40, 3);
    rect(width / 2 - 41, 255, 3, 25);    
    stroke(220, 50, 50);
    strokeWeight(2);
    line(width / 2 - 60, 255, width / 2 - 20, 280);
    line(width / 2 - 60, 280, width / 2 - 20, 255);
    // IT
    stroke(0);
    strokeWeight(2);
    fill(70, 200, 70);
    rect(width / 2 - 20, 255, 13, 25, 5, 0, 0, 5);
    fill(244);
    rect(width / 2 - 7, 255, 14, 25);
    fill(240, 40, 40);
    rect(width / 2 + 7, 255, 13, 25, 0, 5, 5, 0);
    // FR
    stroke(0);
    strokeWeight(2);
    fill(70, 70, 200);
    rect(width / 2 + 20, 255, 13, 25, 5, 0, 0, 5);
    fill(244);
    rect(width / 2 + 33, 255, 14, 25);
    fill(240, 40, 40);
    rect(width / 2 + 47, 255, 13, 25, 0, 5, 5, 0);
    // DE
    fill(10, 10, 10);
    rect(width / 2 + 60, 255, 40, 8, 0, 5, 0, 0);
    fill(220, 30, 30);
    rect(width / 2 + 60, 263, 40, 9);
    fill(220, 220, 30);
    rect(width / 2 + 60, 272, 40, 8, 0, 0, 5, 0);
    // Cover
    strokeWeight(0);
    fill(221, 161, 94);
    strokeWeight(3);
    noFill();
    rect(width / 2 - 100, 255, 200, 25, 5, 5, 5, 5);
    line(width / 2, 245, width / 2, 255);
    line(width / 2 - 60, 255, width / 2 - 60, 278);
    line(width / 2 - 20, 255, width / 2 - 20, 278);
    // Language Selection
    if ((mouseX > width / 2 - 100) && (mouseX < width / 2 - 60) && (mouseY > 255) && (mouseY < 280) && (mousePressed)) {
      language = "ES";
    } else if ((mouseX > width / 2 - 60) && (mouseX < width / 2  - 20) && (mouseY > 255) && (mouseY < 280) && (mousePressed)) {
      language = "EN";
    } else if ((mouseX > width / 2 - 20) && (mouseX < width / 2 + 20) && (mouseY > 255) && (mouseY < 280) && (mousePressed)) {
      language = "IT";
    } else if ((mouseX > width / 2 + 20) && (mouseX < width / 2 + 60) && (mouseY > 255) && (mouseY < 280) && (mousePressed)) {
      language = "FR";
    } else if ((mouseX > width / 2 + 60) && (mouseX < width / 2 + 100) && (mouseY > 255) && (mouseY < 280) && (mousePressed)) {
      language = "DE";
    }
  }
  // Back
  strokeWeight(3);
  if (theme == 1) {
    fill(221, 161, 94);
  } else {
    fill(168, 218, 220);
  }
  rect(30, 20, 50, 30, 15, 15, 15, 15);
  image(back, 41, 23);
  textSize(16);
  fill(0);
  if ((mouseX > 30) && (mouseX < 80) && (mouseY > 20) && (mouseY < 50) && (mousePressed)) {
    board = true;
  }  
  // Sound
  if (((mouseX > width / 2 - 25) && (mouseX < width / 2 + 25) && (mouseY > 295) && (mouseY < 345) && (mousePressed)) && volume) {
    volume = false;
  } else if (((mouseX > width / 2 - 25) && (mouseX < width / 2 + 25) && (mouseY > 295) && (mouseY < 345) && (mousePressed)) && !volume) {
    volume = true;
  }  
}
