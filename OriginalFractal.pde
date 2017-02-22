public int a = 400;
public int b = 800;
public int c = 450; 
public boolean counter = true;
public void setup()
{
	size(800,800);
}
public void draw()
{	
	background(200,200,200);
	fractal(400,700,b+5,0);
	fractal(400,700,b,255);
	if(counter==true)
	{
		a = a-1;
		b = b+1;
		c = c+1;
	}

	if(c>=800)
	{
		a = 900;
		b = 0;
		c = 0;
	}
	

	
	
}
public void fractal(float x, float y, float siz, int cColor)
{
	//noFill();
	fill(cColor);
	//rotate((float)(Math.random()*2));
	stroke(20);
	//ellipse(x,y,siz,siz);
	triangle(x,y,x+siz/2,y-siz/2,x+siz,y);
	triangle(x,y,x-siz/2,y-siz/2,x-siz,y);
	if(siz>20)
	{
		fractal((float)x-50,(float)y-50,(float)siz/3,cColor);
		fractal((float)x+siz/(2),(float)y,(float)siz/(2),cColor);
		fractal((float)x,(float)y,(float)siz/2,cColor);
		fractal((float)x-25,(float)y-25,(float)siz/3,cColor);
		fractal((float)x-50,(float)y-50,(float)siz/3,cColor);

		
		//fill((int)(Math.random()*255),0,0);
		//fractal((float)x+siz/(2),(float)y,(float)siz/(2),cColor);
		//fill(0,(int)(Math.random()*(2)55),0);
		//fractal(x-siz/(2),y,siz/(2));
		//fill(0,0,(int)(Math.random()*(2)55));
		//fractal(x,y+siz/(2),siz/(2));
		//fill((int)(Math.random()*(2)55));
		//fractal(x,y-siz/(2),siz/(2));
		
	}
}