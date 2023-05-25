float angle = 0;

void setup() {
  size(800, 600, P3D);

}

void draw() {
  
  background(0);
  lights();

  translate(width/2, height/2, 0);
  rotateX(angle);
  rotateY(angle * 0.3);
  rotateZ(angle * 1.2);
  
  // Рисува прозрачен куб
  noFill();
  stroke(51, 204, 255, 100);
  strokeWeight(2);
  box(200);
  
  rotateX(-angle);
  rotateY(-angle * 0.3);
  rotateZ(-angle * 1.2);
  // Рисува пирамидата
  noFill();
  
  stroke(random(255),random(255),random(255), 100);
  strokeWeight(2);
  translate(0, 0, -50); 
  
  float pyramidSize = 100; 
  float pyramidOffset = 50; 
  
  beginShape(TRIANGLES);
  vertex(-pyramidSize/2, -pyramidSize/2, -pyramidSize/2 + pyramidOffset); 
  vertex(pyramidSize/2, -pyramidSize/2, -pyramidSize/2 + pyramidOffset); 
  vertex(0, pyramidSize/2, pyramidOffset); 
  
  vertex(pyramidSize/2, -pyramidSize/2, -pyramidSize/2 + pyramidOffset); 
  vertex(-pyramidSize/2, -pyramidSize/2, -pyramidSize/2 + pyramidOffset); 
  vertex(0, pyramidSize/2, pyramidOffset); 
  
  vertex(-pyramidSize/2, -pyramidSize/2, -pyramidSize/2 + pyramidOffset); 
  vertex(0, -pyramidSize/2, pyramidSize/2 + pyramidOffset); 
  vertex(0, pyramidSize/2, pyramidOffset);
  
  vertex(pyramidSize/2, -pyramidSize/2, -pyramidSize/2 + pyramidOffset);
  vertex(0, -pyramidSize/2, pyramidSize/2 + pyramidOffset); 
  vertex(0, pyramidSize/2, pyramidOffset); 
  
  endShape();
  angle += 0.01;
  
}
