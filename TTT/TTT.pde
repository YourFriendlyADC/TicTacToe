import ddf.minim.*;

PFont font;
Minim minim;
AudioPlayer audioPlayer;
PImage settings, noVol, vol, icon, reset, back, exit;
boolean board = true, volume = true, themeBoard = false, lgBoard = false, ended = false, twoPlayers = false;
String language = "EN", mode = "P1 vs. IA";
String settingsText, themeText, lgText, exitText, backText, turnText, blueText, redText, winnerText, drawText;
int restartX, settingsX, themeX, lgX, exitX, backX, turnX, blueX, redX, winnerBX, winnerRX, drawX;
int boxes[] = new int[9], player = 1, i = 0, theme = 2, redVictories = 0, blueVictories = 0, random;

void setup() {
  // Screen Size
  size(500, 580);
  // Images
  settings = loadImage("images/settings.png");
  noVol = loadImage("images/noVol.png");
  vol = loadImage("images/vol.png");  
  icon = loadImage("images/icon.png");
  reset = loadImage("images/reset.png");  
  back = loadImage("images/back.png");
  exit = loadImage("images/exit.png");
  surface.setIcon(icon);
  // Font
  font = loadFont("BookmanOldStyle-Bold-20.vlw");
  textFont(font);
  // Sound
  minim = new Minim(this);
  audioPlayer = minim.loadFile("sound.wav");
}

void draw() {
  // Theme setting
  if (theme == 1) {
    background(254, 250, 224);
  } else {
    background(241, 250, 238);
  }
  // Audio
  if (volume) {
    audioPlayer.play();
  } else {
    audioPlayer.pause();
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
  }
  // Tab Setting
  if (board) {
    drawBoard();
    if (mousePressed && !ended) {
      setTrain(player);
    }
  } else {
    settingsMenu();
  }
}
