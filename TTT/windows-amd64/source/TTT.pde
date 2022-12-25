PFont font;
PImage settings, noVol, vol, icon, reset;
boolean game = true, volume = true, themeBoard = false, lgBoard = false, ended = false;
String language = "EN", settingsText, themeText, lgText, exitText, backText;
int boxes[] = new int[9], player = 1, i = 0, restartX, settingsX, themeX, lgX, exitX, backX, theme = 2;

void setup() {
  size(650, 500);
  settings = loadImage("images/settings.png");
  noVol = loadImage("images/noVol.png");
  vol = loadImage("images/vol.png");
  font = loadFont("BookmanOldStyle-Bold-20.vlw");
  icon = loadImage("images/icon.png");
  reset = loadImage("images/reset.png");
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
  } else if (language == "ES") {
    settingsText = "Ajustes";
    themeText = "Tema";
    lgText = "Idioma";
    exitText = "Salir";
    backText = "Atrás";
  } else if (language == "IT") {
    settingsText = "Impostazioni";
    themeText = "Tema";
    lgText = "Lingua";
    exitText = "Uscita";
    backText = "Indietro";
  } else if (language == "FR") {
    settingsText = "Paramètres";
    themeText = "Thème";
    lgText = "Langue";
    exitText = "Sortie";
    backText = "Revenir";
  } else if (language == "DE") {
    settingsText = "Konfigurationen";
    themeText = "Thema";
    lgText = "Sprache";
    exitText = "Verlassen";
    backText = "Zurück";
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
