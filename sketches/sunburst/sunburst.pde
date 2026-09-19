int frameLimit = 60; 

void setup() {
    size(800, 800); 
    background(#eeeeee); 
}

void draw() {
    background(random(100, 180), random(0, 60), random(150, 255));

    translate(width/2, height/2); 
    
    for (int n=0; n<30; n++) { 
        
        stroke(random(100, 180), random(0, 60), random(150, 255)); 

        for (int a=0; a<360; a+=3) { 
            float x = random(50, 150); 
            float xx = random(150, 350); 
            
            pushMatrix(); 
            rotate(radians(a)); 
            strokeCap(CORNER); 
            strokeWeight(7); 
            line(x, 0, xx, 0); 
            popMatrix(); 
        }
    }

    saveFrame("frames/B_####.jpg"); 

    if (frameCount >= frameLimit) {  
        exit();
    }
}