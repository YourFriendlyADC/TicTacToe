package game;

import processing.core.PApplet;
import processing.core.PImage;

public class TicTacToe extends PApplet {

    PImage signO, signX;
    String turnSign = "X";
    boolean c1 = false, c2 = false, c3 = false, c4 = false, c5 = false, c6 = false, c7 = false, c8 = false, c9 = false;
    boolean turn1 = true, turn2 = false, turn3 = false, turn4 = false, turn5 = false, turn6 = false, turn7 = false, turn8 = false, turn9 = false;
    int i = 0;

    @Override
    public void settings() {
        size(650, 500);
    }

    @Override
    public void setup() {

    }

    @Override
    public void draw() {
        background(254, 250, 224);
        squaresDesign();
        board();
        if (turn1 == true) {
            turnSign = "X";
            turno1(turnSign);
            turn1 = false;
            turn2 = true;
        } else if (turn2 == true) {
            turnSign = "X";
            turno2(turnSign);
            turn2 = false;
            turn3 = true;
        }
        restart();
    }

    public void run() {
        String[] processingArgs = {this.getClass().getName()};
        PApplet.runSketch(processingArgs, this);
    }

    void squaresDesign() {
        fill(166, 198, 146);
        strokeWeight(0);
        rect(25, 25, 450, 450);
        // Cuadros
        if ((mouseX > 25) && (mouseX < 170) && (mouseY > 25) && (mouseY < 170)) { // Cuadros
            cursor(HAND);
            fill(100, 255, 100);
            strokeWeight(0);
            rect(25, 25, 145, 145);
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
            rect(325, 25, 150, 145);
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
            rect(25, 325, 145, 150);
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
            rect(325, 325, 150, 150);
            if (mousePressed) {
                c9 = true;
            }
        } else {
            cursor(ARROW);
        }
        turno1(turnSign);
        turno2(turnSign);
        turno3(turnSign);
        turno4(turnSign);
        turno5(turnSign);
        turno6(turnSign);
        turno7(turnSign);
    }

    void board() {
        // Tablero        
        strokeWeight(3);
        stroke(0);
        noFill();
        rect(25, 25, 450, 450, 5, 5, 5, 5);
        fill(40, 54, 24);
        line(25, 170, 475, 170);
        line(25, 325, 475, 325);
        line(170, 25, 170, 475);
        line(325, 25, 325, 475);
        // Small Board
        fill(221, 161, 94);
        strokeWeight(3);
        rect(500, 120, 125, 125, 5, 5, 5, 5);
        textSize(18);
        fill(0);
//        text("Winner", 525, 140, 70, 30);
        text("Winner", 530, 95, 70, 30);
        fill(221, 161, 94);
        rect(525, 265, 80, 35, 10, 10, 10, 10);
        fill(0);
        textSize(16);
        text("Restart", 537, 272, 80, 30);
        if (c3) {
            drawO(395, 95);
            ellipse(562, 182, 80, 80);
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

    void turno1(String turnSign) {
        if (c1) {
            switch (turnSign) {
                case "X" -> {
                    drawX(45, 45, 150, 150, 45, 150, 150, 45);
                }
                case "O" -> {
                    drawO(95, 95);
                }
            }
        }
    }

    void turno2(String turnSign) {
        if (c2) {
            switch (turnSign) {
                case "X" -> {
                    fill(0);
                    strokeWeight(5);
                    drawX(195, 45, 300, 150, 195, 150, 300, 45);
                }
                case "O" -> {
                    noFill();
                    stroke(40, 40, 250);
                    strokeWeight(5);
                    ellipse(245, 95, 75, 75);
                }
            }
        }
    }

    void turno4(String turnSign) {
        if (c4) {
            drawO(95, 245);
        }
    }

    void turno5(String turnSign) {
        if (c5) {
            drawO(245, 245);
        }
    }

    void turno6(String turnSign) {
        if (c6) {
            drawX(345, 195, 450, 300, 345, 300, 450, 195);
        }
    }

    void turno7(String turnSign) {
        if (c7) {
            drawO(95, 395);
        }
    }

    void restart() {
        if ((mouseX > 525) && (mouseX < 605) && (mouseY > 265) && (mouseY < 300) && (mousePressed)) {
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

}
