PFont font;
PImage settings, noVol, vol, icon, reset;
boolean game = true, volume = true, themeBoard = false, lgBoard = false, ended = false;
String language = "EN", settingsText, themeText, lgText, exitText, backText, blueText, redText, winnerText, drawText, pressResetText, turnText;
int boxes[] = new int[9], player = 1, i = 0, restartX, settingsX, themeX, lgX, exitX, backX, turnX, blueX, redX, winnerBX, winnerRX, theme = 2;

void setup() {
  size(650, 500);
  settings = loadImage("images/settings.png");
  noVol = loadImage("images/noVol.png");
  vol = loadImage("images/vol.png");  
  icon = loadImage("images/icon.png");
  reset = loadImage("images/reset.png");
  font = loadFont("BookmanOldStyle-Bold-20.vlw");
  surface.setIcon(icon);
  textFont(font);
}

void draw() {
  // Theme setting
  if (theme == 1) {
    background(254, 250, 224);
  } else {
    background(241, 250, 238);
  }

  // Language setting
  if (language == "EN") {
    settingsText = "Settings";
    themeText = "Theme";
    lgText = "Language";
    exitText = "Exit";
    backText = "Back";
    turnText = "It's your turn";
    blueText = "Blue";
    redText = "Red";
    winnerText = "wins";
    drawText = "Draw...";
    pressResetText = "Press Restart";
  } else if (language == "ES") {
    settingsText = "Ajustes";
    themeText = "Tema";
    lgText = "Idioma";
    exitText = "Salir";
    backText = "Atrás";
    turnText = "Es tu turno";
    blueText = "Azul";
    redText = "Rojo";
    winnerText = "gana";
    drawText = "Empate...";
    pressResetText = "Presiona Reiniciar";
  } else if (language == "IT") {
    settingsText = "Impostazioni";
    themeText = "Tema";
    lgText = "Lingua";
    exitText = "Uscita";
    backText = "Indietro";
    turnText = "È il tuo turno";
    blueText = "Blu";
    redText = "Rosso";
    winnerText = "vince";
    drawText = "Pareggio...";
    pressResetText = "Premere Riavvia";
  } else if (language == "FR") {
    settingsText = "Paramètres";
    themeText = "Thème";
    lgText = "Langue";
    exitText = "Sortie";
    backText = "Revenir";
    turnText = "C'est votre tour";
    blueText = "Bleu";
    redText = "Rouge";
    winnerText = "gagne";
    drawText = "Match nul...";
    pressResetText = "Appuyez sur Redémarrer";
  } else if (language == "DE") {
    settingsText = "Konfigurationen";
    themeText = "Thema";
    lgText = "Sprache";
    exitText = "Verlassen";
    backText = "Zurück";    
    turnText = "Sie sind dran";
    blueText = "Blau";
    redText = "Rot";
    winnerText = "gewinnt";
    drawText = "Binden...";
    pressResetText = "Drücken Sie Neu starten";
  }

  // Tab Setting
  if (game) {
    drawBoard();
    if (mousePressed && !ended) {
      setTrain(player);
    }
  } else {
    settingsMenu();
  }
}
