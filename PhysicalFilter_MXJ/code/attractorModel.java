import com.cycling74.max.*;

import miPhysics.*;

public class attractorModel extends MaxObject implements Executable
{

	int nbAttr = 0;
	int atIndex = 0;
	int nbParticles = 60;
	int attrListStart = 0;

	int simRate = 100;
	int frameRate = 20;

	private MaxClock clock;
	PhysicalModel mdl;

	private static final String[] INLET_ASSIST = new String[]{
		"inlet 1 help"
	};

	private static final String[] OUTLET_ASSIST = new String[]{
		"outlet 1 help"
	};
	
	public attractorModel(Atom[] args)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL});
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

		mdl = new PhysicalModel(300, 100);

		mdl.createLinkSubset("contacts");

		mdl.addGround3D("gnd", new Vect3D(0,0,0));
	  
 		 for (int i = 0; i< nbParticles; i++){
   	  		 mdl.addMass3D("m_"+i, 1, new Vect3D(Math.random()* 200 - 100, Math.random()* 200 - 100, 0), new Vect3D(0,0,0));
 	 	   mdl.addBubble3D("bub_"+i, 500, 0.1, 0.1, "m_"+i, "gnd");
 		 }

 		 for (int i = 0; i< nbParticles; i++){
   			 for (int j = 0; j< nbParticles; j++){
      			if(i != j)
        			mdl.addContact3D("cnt_"+i+"_"+j, 20, 0.05, 0.05, "m_"+i, "m_"+j);
					mdl.addLinkToSubset("cnt_"+i+"_"+j, "contacts");
    		 }
  		}
  
  		attrListStart = mdl.getNumberOfMats();

		addAttractor(0, 0);

		

  		mdl.setFriction(0.01);
  		mdl.init();

		clock = new MaxClock(this);

		

	}

	private void addAttractor(float posX, float posY){
   		mdl.addGround3D("at_"+ atIndex,new Vect3D(posX, posY,0));
   		for (int i = 0; i< nbParticles; i++){
     		mdl.addAttractor3D("atl_"+atIndex+"_"+i,40, 8000, "m_"+i, "at_"+atIndex);
		}
   		atIndex++;
   		nbAttr++;  
	}


	public void execute(){
		bang();
		clock.delay(1000/frameRate);
	}
    
	public void bang()
	{
		mdl.computeNSteps(simRate / frameRate);
		float[] list = new float[3* nbParticles];
		Vect3D pos = new Vect3D(0,0,0);

		Atom[] l2 = new Atom[4];
		
		for (int i = 0; i < nbParticles; i++){

			pos = mdl.getMatPosAt(1+i);

			
			l2[0] = Atom.newAtom(i+1);
			l2[1] = Atom.newAtom((float)(pos.x/1000.+0.5));
			l2[2] = Atom.newAtom((float)(pos.y/1000.+0.5));
			l2[3] = Atom.newAtom((float)(pos.z/1000.));

			MaxSystem.sendMessageToBoundObject("receiver", "setnode", l2);


			list[3*i+0]= (float)pos.x;
			list[3*i+1]= (float)pos.y;
			list[3*i+2]= (float)pos.z;
		}

		l2[0] = Atom.newAtom((float)pos.x);
		l2[1] = Atom.newAtom((float)pos.x);
		l2[2] = Atom.newAtom((float)pos.x);

		outlet(0,  list );
	}

	protected void notifyDeleted() {
		clock.unset();
	}

    
	public void inlet(int i)
	{
		if (i ==1)
			clock.delay(0);
		else
			clock.unset();
	}
    
	public void inlet(float f)
	{
	}

	public void start(){
		post("Starting the physical computation...");
		clock.delay(0);
	}

	public void stop(){
		post("Stopping the physical computation...");
		clock.unset();
	}

	public void repulsionDist(float val){
		post("Changing the repulsion distance to: "+ val);
		mdl.changeDistParamOfSubset(val, "contacts");
	}

	public void frictionVal(float val){
		post("Changing the friction value to: "+ val);
		mdl.setFriction(val);
	}

	public void simSpeed(int val){
		post("Changing the sim speed to: " + val + "Hz");
		simRate = val;
	}
    
    
	public void list(Atom[] list)
	{
    	mdl.setMatPosAt(attrListStart, new Vect3D((list[0].getFloat()-0.5)*1000,(list[1].getFloat()-0.5)*1000, 0));
	}

    
}


