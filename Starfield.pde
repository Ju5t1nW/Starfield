
 Particle[] bob;
void setup(){
  size(500, 500);
  bob = new Particle[5000];

  for(int i = 0; i < bob.length; i ++){
    bob[i] = new NormalParticle();
  }
  bob[0]= new OddballParticle();
  bob[1]= new JumboParticle();
}

void draw(){
  background(0);
   for(int i = 0; i < bob.length; i ++){
       bob[i].show();
       bob[i].walk();
  }
 	 
}  
class  NormalParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;
	
  NormalParticle(){
    myX = 250;
    myY = 150;
    myAngle =  Math.random() * 2 * Math.PI;
    mySpeed = (Math.random() * 10) +1;
    
  }

 public void walk(){

     myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  public void show(){
    
     fill(255);
   
   rect((float)myX,(float) myY, 2, 150);
  }

}
interface Particle
{
	public void show();
	public void walk();
}
class  OddballParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;
	
  OddballParticle(){
    myX = 250;
    myY = 250;
    myAngle =  Math.random() * 2 * Math.PI;
    mySpeed = (Math.random() * 10) +1;
    
  }

 public void walk(){

     myX = myX +(int)(Math.random()*11) - 5;
    myY = myY + (int)(Math.random()*11) - 5;
  }
  public void show(){
    
     fill((int)(Math.random()*256), (int)(Math.random()*256) ,(int)(Math.random()*256));
   
   ellipse((float)myX,(float) myY, 100, 100);
  }
}
class JumboParticle extends NormalParticle
{
	  public void show(){
    
     fill(254);
   
   rect((float)myX,(float) myY, 10, 750);
  }

}

