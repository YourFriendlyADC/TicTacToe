PFont font;
PImage settings, noVol, vol;
String actualSign = "X", language = "EN", restartText, settingsText, themeText, lgText, exitText, backText;
boolean c1 = false, c2 = false, c3 = false, c4 = false, c5 = false, c6 = false, c7 = false, c8 = false, c9 = false;
boolean turn1 = true, turn2 = false, turn3 = false, turn4 = false, turn5 = false, turn6 = false, turn7 = false, turn8 = false, turn9 = false;
boolean game = true, volume = true, themeBoard = false, lgBoard = false, signX = true, signO = false;
int i = 0, restartX, settingsX, themeX, lgX, exitX, backX;
    
void setup() {
  size(650, 500);
  settings = loadImage("images/settings.png");
  noVol = loadImage("images/noVol.png");
  vol = loadImage("images/vol.png");
  font = loadFont("BookmanOldStyle-Bold-20.vlw");
  //photo = loadImage("images/owl.png");        
  //surface.setIcon(icon);
  textFont(font);
}

void draw() {
  background(254, 250, 224);
  if (language == "EN") {
    restartText = "Restart";
    settingsText = "Settings";
    themeText = "Theme";
    lgText = "Language";
    exitText = "Exit";
    backText = "Back";
  } else if (language == "ES") {
    restartText = "Reiniciar";
    settingsText = "Ajustes";
    themeText = "Tema";
    lgText = "Idioma";
    exitText = "Salir";
    backText = "Atrás";
  } else if (language == "IT") {
    restartText = "Ricominciare";
    settingsText = "Impostazioni";
    themeText = "Tema";
    lgText = "Lingua";
    exitText = "Uscita";
    backText = "Indietro";
  } else if (language == "FR") {
    restartText = "Recommencer";
    settingsText = "Paramètres";
    themeText = "Thème";
    lgText = "Langue";
    exitText = "Sortie";
    backText = "Revenir";
  }
  if (game) {
    squaresDesign();
    board();
    restart();
  } else {
    settingsMenu();
  }
}

void squaresDesign() {
  fill(166, 198, 146);
  strokeWeight(0);
  rect(25, 25, 450, 450, 15, 15, 15, 15);
  // Cuadros
  if ((mouseX > 25) && (mouseX < 170) && (mouseY > 25) && (mouseY < 170)) { // Cuadros
    cursor(HAND);
    fill(100, 255, 100);
    strokeWeight(0);
    rect(25, 25, 145, 145, 15, 0, 0, 0);
    if (mousePressed) {
      c1 = true;
    }
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 25) && (mouseY < 170)) { // Cuadro 2
      cursor(HAND);
      fill(100, 255, 100);
      strokeWeight(0);
      rect(170, 25, 155, 145);
      if (mousePressed) {
        c2 = true;
      }
  } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 25) && (mouseY < 170)) { // Cuadro 3
      cursor(HAND);
      fill(100, 255, 100);
      strokeWeight(0);
      rect(325, 25, 150, 145, 0, 15, 0, 0);
      if (mousePressed) {
        c3 = true;
      }
  } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 4
      cursor(HAND);
      fill(100, 255, 100);
      strokeWeight(0);
      rect(25, 170, 145, 155);
      if (mousePressed) {
        c4 = true;
      }
  } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 5
  cursor(HAND);
  fill(100, 255, 100);
  strokeWeight(0);
  rect(170, 170, 155, 155);
  if (mousePressed) {
    c5 = true;
            }
        } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 170) && (mouseY < 325)) { // Cuadro 6
            cursor(HAND);
            fill(100, 255, 100);
            strokeWeight(0);
            rect(325, 170, 150, 155);
            if (mousePressed) {
                c6 = true;
            }
        } else if ((mouseX > 25) && (mouseX < 170) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 7
            cursor(HAND);
            fill(100, 255, 100);
            strokeWeight(0);
            rect(25, 325, 145, 150, 0, 0, 0, 15);
            if (mousePressed) {
                c7 = true;
            }
        } else if ((mouseX > 170) && (mouseX < 325) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 8
            cursor(HAND);
            fill(100, 255, 100);
            strokeWeight(0);
            rect(170, 325, 155, 150);
            if (mousePressed) {
                c8 = true;
            }
        } else if ((mouseX > 325) && (mouseX < 475) && (mouseY > 325) && (mouseY < 475)) { // Cuadro 9
            cursor(HAND);
            fill(100, 255, 100);
            strokeWeight(0);
            rect(325, 325, 150, 150, 0, 0, 15, 0);
            if (mousePressed) {
                c9 = true;
            }
        } else {
            cursor(ARROW);
        }
        // drawing
        if (c1) {
            if (signX) {
                drawX(25, 25, 145, 145, 25, 145, 145, 25);
                signX = false;
                signO = true;
            } else {
                drawO(85, 85);
                signO = false;
                signX = true;
            }
        }
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
        fill(221, 161, 94);
        strokeWeight(3);
        line(500, 50, 625, 50);
        //rect(500, 120, 125, 125, 5, 5, 5, 5);
        textSize(18);
        fill(0);
        //text("Winner", 530, 95, 70, 30);
        fill(221, 161, 94);
        rect(500, 365, 130, 35, 15, 15, 15, 15);
        fill(0);
        textSize(16);
        switch (restartText) {
          case "Reiniciar":
            restartX = 532;
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
        fill(221, 161, 94);
        stroke(0);
        strokeWeight(3);
        ellipse(565, 435, 40, 40);
        image(settings, 553, 423);
        if ((mouseX > 545) && (mouseX < 585) && (mouseY > 415) && (mouseY < 455) && (mousePressed)) {
            game = !game;
        }
    }

    void drawX(int kx1, int ky1, int kx2, int ky2, int lx1, int ly1, int lx2, int ly2) {
        stroke(250, 40, 40);
        strokeWeight(7);
        line(kx1, ky1, kx2, ky2);
        line(lx1, ly1, lx2, ly2);
    }

    void drawO(int x, int y) {
        noFill();
        stroke(40, 40, 250);
        strokeWeight(5);
        ellipse(x, y, 95, 95);
    }

    void restart() {
        if ((mouseX > 525) && (mouseX < 605) && (mouseY > 365) && (mouseY < 400) && (mousePressed)) {
            c1 = false;
            c2 = false;
            c3 = false;
            c4 = false;
            c5 = false;
            c6 = false;
            c7 = false;
            c8 = false;
            c9 = false;
        }
    }

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
        fill(221, 161, 94);
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
          exitX = width / 2 - 16;
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
            fill(166, 198, 146);
            rect(width / 2 + 107, 105, 13, 35, 0, 10, 10, 0);
            //
            strokeWeight(0);
            fill(221, 161, 94);
            strokeWeight(3);
            noFill();
            line(width / 2 + 70, 122, width / 2 + 80, 122);
            rect(width / 2 + 80, 105, 40, 35, 10, 10, 10, 10);
            //line(width/2 + 120, 100, width/2 + 120, 145);            
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
        fill(221, 161, 94);
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
            backX = width - 90;
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
