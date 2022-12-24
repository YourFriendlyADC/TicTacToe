PFont font;
PImage settings, noVol, vol;
String actualSign, language = "EN", restartText, settingsText, themeText, lgText, exitText, backText;
boolean c[] = {false, false, false, false, false, false, false, false, false}, isEnd = false;
boolean turn[] = {false, false, false, false, false, false, false, false, false}; // false x, true o
boolean game = true, volume = true, themeBoard = false, lgBoard = false, signX = true, signO = false;
int i = 0, restartX, settingsX, themeX, lgX, exitX, backX, theme = 2, actualTurnI = -1, actualTurnP = -1;
    
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
  if (theme == 1) {
    background(254, 250, 224);
  } else {
    background(241, 250, 238);
  }
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
