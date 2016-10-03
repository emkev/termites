
/* 2015.12.21 12:18 start , 
build chips field with changed by termites .
*/

class chips
{
  int rows , cols ;
  int resolution ; 
  int[][] field ;
  float dense = 0.2 ;
  float ravar ;
  
  chips()
  {
    resolution = 10 ;
    rows = width / resolution ;
    cols = height / resolution ;
    field = new int[rows][cols];
    init();
    
    /* 
    Define "dense" in this , BUT I use "dense" in init() of 
    the preceding processes .
    dense = 0.4 ;
    
    !!! Programs are the Processes !!! Processes ! Processes !
    !!! Are you a ARTIST , OR A PROGRAMMER !!!
    */
  }
  
  void init()
  {
    for(int a = 0 ; a < rows ; a++)
    {
      for(int b = 0 ; b < cols ; b++)
      {
        /* vants : 
        noise(tx , ty) as different info value of 
        field grid ... */
        
        //field[a][b] = (int)random(0 , 2);
        
        //println("random = " , random(0.0 , 1.0));
        //println("dense - " , random(0.0 , 1.0) < dense);
        /*
        ravar = random(0.0 , 1.0);
        println("ravar = " , ravar , "dense = " , dense);
        println("dense - " , ravar < dense);
        */
        field[a][b] = (random(0.0 , 1.0) < dense) ? 1 : 0 ;
      }
    }
  }
  
  int chipLookup(int posx , int posy)
  {
    /* int array can't use get() , because "int" isn't a object . 
    return field[posx][posy].get();
    */
    return field[posx][posy];
  }
  
  void setFactor(int posx , int posy , int value)
  {
    field[posx][posy] = value;
  }
  
  void display()
  {
    //println("width = " , width , "height = " , height);
    /* dangerous code !!! 
    loadPixels();
    */
    for(int x = 0 ; x < rows ; x++)
    {
      for(int y = 0 ; y < cols ; y++)
      {
        /* 2015.12.21 , DANGEROUS Code ! ! !
        float bright = map(field[x][y] , 0 , 2 , 0 , 255);
        println("bright = " , bright);
        pixels[x + y * width] = color(bright);
        */
        
        //println("field = " , field[x][y]);
        //println("width = " , width , "height = " , height);
        
        /* give up the last value of array . */
        if(field[x][y] == 1 && x != rows - 1 && y != cols - 1)
        {
          ellipse(x * 10 + 5 , y * 10 + 5 , 4 , 4);
        }
        else
        {
          
        }
      }
    }
    /* 2015.12.21 , dangerous code !!!
    updatePixels();
    */
  }
  
}
