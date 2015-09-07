void setup() {
    size(600, 600); // set the dimensions of the window
    background(255, 255, 255); // set background color to white
}


void draw() {
    noStroke(); // don't draw an outline
    
    // mousePressed is a built-in variable. 
    // its value is 'true' when a mouse button
    // is currently being pressed.
    if (mousePressed) {
        // select a different fill color, depending
        // on which mouse button is pressed:
        if (mouseButton == LEFT) {
            fill(0, 0, 0); // fill color: black
        } else if (mouseButton == RIGHT) {
            fill(255, 128, 0); // fill color: orange
        }
        
        // mouseX and mouseY are built-in variables
        // that contain the current x and y position
        // of the mouse cursor.
        
        // draw circle with a diameter of 20px
        // at current mouse position
        ellipse(mouseX, mouseY, 20, 20);
    }
}

