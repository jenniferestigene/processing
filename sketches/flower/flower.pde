
float angle;

color[] colors = {
    color(255, 204, 213), // Pastel Pink
    color(202, 228, 255), // Pastel Blue
    color(204, 255, 204), // Pastel Green
    color(255, 243, 176), // Pastel Yellow
    color(226, 211, 247),  // Pastel Purple
};

int frameLimit = 450;

void setup() {
    size(825, 825);
    surface.setLocation(957, 0);
    rectMode(CENTER);
    stroke(0);
    strokeWeight(7);
}

void draw() {
    background(0, 15, 20);

    translate(width/2, height/2);

    for (int i=0; i<100; i++) {
        fill(colors[i % colors.length]);
        scale(0.95);
        rotate(radians(angle));
        rect(0, 0, 600, 600);
    }
    angle+=0.1;

    saveFrame("frames/F_####.jpg");

    if (frameCount >= frameLimit) {
        exit();
    }
}