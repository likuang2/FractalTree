private double fractionLength = .8; 
private int smallestBranch = 8; 
private double branchAngle = 0.6;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320,380,100,7*PI/5);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{    
  double angle1 = angle + branchAngle-0.1;
  double angle2 = angle - branchAngle-0.1;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1)+x);
  int endX2 = (int)(branchLength*Math.cos(angle1)+x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endY2 = (int)(branchLength*Math.sin(angle1)+y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  
  if(branchLength > smallestBranch)
  {
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2); 
  }
}
