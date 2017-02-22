private double fractionLength = 1; 
private int smallestBranch = 5; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,200);   
	drawBranches(320,200,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	int endX1;
	int endY1;
	int endX2;
	int endY2;
	double angle1;
	double angle2;    
	angle1=angle+branchAngle;
	angle2 =angle-branchAngle;
	branchLength=branchLength*fractionLength;
	endX1 = (int)(branchLength*Math.cos(angle1) + x);
	endY1 = (int)(branchLength*Math.sin(angle1) + y);
	endX2 = (int)(branchLength*Math.cos(angle2) + x);
	endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch){
		  drawBranches(endX1,endY1, branchLength/2,3*Math.PI/2 );
	drawBranches(endX2,endY2, branchLength/2,3*Math.PI/2 );
	}
	else
		
	line(320,480,320,200); 
} 
