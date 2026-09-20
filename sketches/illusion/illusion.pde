
float angle;

int frameLimit = 450;

void setup() {
    size(800, 800);
    surface.setLocation(957, 0);
    noStroke();
    fill(0, 15, 30);
}

void draw() {
    background(255);

    float x = width;
    float dia = 110;
    int num = 100;

    translate(width/2, height/2);
    for (float a=0; a<360; a+=22.5) {
        rotate(radians(a));
        pushMatrix();
        for (int i=0; i<num; i++) {
            scale(0.95);
            rotate(radians(angle));
            rect(x, 0, dia, dia);
        }
        popMatrix();

        pushMatrix();
        for (int i=0; i<num; i++) {
            scale(0.95);
            rotate(-radians(angle));
            rect(x, 0, dia, dia);
        }
        popMatrix();

    }
    angle+=0.01;

    saveFrame("frames/I_####.jpg");

    if (frameCount >= frameLimit) {
        exit();
    }
}