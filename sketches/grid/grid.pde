
float sw, alpha;
float yStep = 10;
float arcSize = 200;

int frameLimit = 450;

void setup() {
    size(800, 800);
    colorMode(HSB, 360, 100, 100);
}

void draw() {
    float hueValue = frameCount % 360;
    background(hueValue, 80, 90);

    mouseX = constrain(mouseX, 10, width);
    mouseY = constrain(mouseY, 10, height);

    //yStep = mouseY;
    //arcSize = mouseX;

    noFill();
    stroke(10);

    for (float y=0; y<height; y+=yStep) {
        float rowAlpha = alpha + y * 0.1;
        sw = map(sin(radians(y+rowAlpha)), -1, 1, 2, yStep);
        strokeWeight(sw);
        for (float x1=arcSize/2; x1<width+arcSize; x1+=arcSize) {
            rect(x1, y, arcSize/2, arcSize/2);
        }
        sw = map(sin(radians(y-rowAlpha)), -1, 1, 2, yStep);
        strokeWeight(sw);
        for (float x2=0; x2<width+arcSize; x2+=arcSize) {
            rect(x2, y, arcSize/2, arcSize/2);
        }
    }
    alpha++;

    saveFrame("frames/G_####.jpg");

    if (frameCount >= frameLimit) {
        exit();
    }
}