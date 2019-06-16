/*
Model: Flying Mesh
Author: James Leonard (james.leonard@gipsa-lab.fr)

A 2D mesh of masses and springs that just sort of floats through the air,
sometimes folding over itself.

It collides with a 2D Plane.

Press and release space bar to invert gravity.
*/

import miPhysics.*;
import peasy.*;

 
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

// SOME GLOBAL DECLARATIONS AND REQUIRED ELEMENTS

int displayRate = 90;
boolean BASIC_VISU = true;

int nbAttr = 0;
int atIndex = 0;
int nbParticles = 60;

int attrListStart = 0;


/*  global physical model object : will contain the model and run calculations. */
PhysicalModel mdl;
ModelRenderer renderer;


// SETUP: THIS IS WHERE WE SETUP AND INITIALISE OUR MODEL

void setup() {

  size(1000, 700, P3D);
  
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("127.0.0.1",777);


  //cam = new PeasyCam(this, 100);
  //cam.setMinimumDistance(50);
  //cam.setMaximumDistance(5000);
  
  // instantiate our physical model context
  mdl = new PhysicalModel(300, displayRate);

  
  mdl.addGround3D("gnd", new Vect3D(0,0,0));
  
  for (int i = 0; i< nbParticles; i++){
    mdl.addMass3D("m_"+i, 1, new Vect3D(random(-100, 100),random(-100, 100), 0), new Vect3D(0,0,0));
    mdl.addBubble3D("bub_"+i, 500, 0.01, 0.1, "m_"+i, "gnd");
  }

  for (int i = 0; i< nbParticles; i++){
    for (int j = 0; j< nbParticles; j++){
      if(i != j)
        mdl.addContact3D("cnt_"+i+"_"+j, 20, 0.001, 0.001, "m_"+i, "m_"+j);
    }
  }
  
  
  attrListStart = mdl.getNumberOfMats();
  
  //mdl.setGravity(0.0001);
  mdl.setFriction(0.0005);

  // initialise the model before starting calculations.
  mdl.init();
  
  renderer = new ModelRenderer(this);
  
  if (BASIC_VISU){
    renderer.displayMats(true);
    //renderer.setSize(matModuleType.Ground3D, 1);
    renderer.setColor(linkModuleType.SpringDamper3D, 155, 200, 200, 255);
    renderer.setSize(linkModuleType.SpringDamper3D, 1);
  }
  else{
    renderer.displayMats(true);
    renderer.setColor(linkModuleType.SpringDamper3D, 100, 20, 10, 255);
    renderer.setSize(linkModuleType.SpringDamper3D, 1);
    renderer.setStrainGradient(linkModuleType.SpringDamper3D, true, 0.1);
    renderer.setStrainColor(linkModuleType.SpringDamper3D, 255, 250, 155, 255);
  }
  
  frameRate(displayRate);
} 

// DRAW: THIS IS WHERE WE RUN THE MODEL SIMULATION AND DISPLAY IT

void draw() {
  
  println(frameRate);
  camera(0,0,900,0,0, 0, 0, 1, 0);
  
  mdl.draw_physics();
  background(0);
  directionalLight(251, 102, 126, 1, -1, 0);
  ambientLight(102, 102, 102);
  
  stroke(255);
  fill(190,190,255, 100);
  ellipse(0, 0, 1000, 1000);
  
  renderer.renderModel(mdl);
  
  for(int i = 0; i < nbParticles; i++){
    OscMessage myMessage = new OscMessage("spat/part/"+i);
    
    PVector pos = mdl.getMatPosAt(i+1).toPVector();
  
    myMessage.add(pos.x/500.);
    myMessage.add(pos.y/500.);
  
  /* send the message */
  oscP5.send(myMessage, myRemoteLocation); 
  }
}


void addAttractor(float posX, float posY){
    mdl.addGround3D("at_"+ atIndex,new Vect3D(posX, posY,0));
    //mdl.addOsc3D("at_"+ atIndex, 100000, 10, 0.1, new Vect3D(posX, posY,0), new Vect3D(0,0,0));    
   for (int i = 0; i< nbParticles; i++)
     mdl.addAttractor3D("atl_"+atIndex+"_"+i, 10, 5, "m_"+i, "at_"+atIndex);
   atIndex++;
   nbAttr++;  
}

void removeAttractor(int attrListPos){
  if(nbAttr > 0){
     mdl.removeMatAndConnectedLinks(attrListPos);
     nbAttr--;
   }

}

void keyPressed() {
  if (key == 'a'){
    addAttractor(mouseX, mouseY);   
  }
  
  if (key == 'z'){
   removeAttractor(attrListStart + nbAttr-1); 
  }
     
  if (key == 'w'){
    while(nbAttr >0)
     removeAttractor(attrListStart + nbAttr-1); 
  }
  
  if (key == 'x'){
  for(int i = 0; i < nbAttr;i++)
    mdl.setMatPosAt(attrListStart+i, new Vect3D(random(-500, 500), random(-500, 500), 0));
  }
}

void mousePressed(){
  
  float pX = map (mouseX, screenX(-500, 0), screenX(500, 0), -500, 500);
  float pY = map (mouseY, screenY(0, -500), screenY(0, 500), -500, 500);
  
  if (mouseButton == LEFT){  
    addAttractor(pX, pY);
  }
  
  else if (mouseButton ==RIGHT){
    PVector mouse = new PVector(pX, pY, 0);
    
    IntList toRemove = new IntList();
    
    for(int i = 0; i < nbAttr;i++){
      PVector tmp = mdl.getMatPosAt(attrListStart + i).toPVector();
      if(tmp.dist(mouse) < 100){
        println("About to remove module at index: " + i);
        toRemove.append(attrListStart + i);
      }
    } 
    while(toRemove.size()>0){
      removeAttractor(toRemove.pop());
      //removeAttractor(elem);
    }
  }
}

void keyReleased() {
  //if (key == ' ')
  //  mdl.setGravity(0.001);
}
