
/* 2015.12.20 23:28 start , 
coding termite program by using processing . 
*/

class termite
{
  //PVector location ;
  int tx , ty ;
  int td ;
  int nx , ny ;
  int resolution ;
  int rows , cols ;

  /*
            ^ y
   [-1,1]  [0,1]  [1,1]
   [-1,0]  [0,0]  [1,0]  x->
   [-1,-1] [0,-1] [1,-1]
  */

  int[][] dir = { 
    { 0 , 1 } , { 1 , 1 } , { 1 , 0 } , { 1 , -1} ,
    { 0 , -1} , {-1 , -1} , {-1 , 0 } , {-1 , 1 }
  };
  
  termite()
  {
    resolution = 10 ;
    rows = width / resolution ;
    cols = height / resolution ;
    //location = new PVector(10 , 10);
    tx = (int)random(0 , rows) ;
    ty = (int)random(0 , cols) ;
    td = (int)random(0 , 8);
  }
  void newStepTry()
  {
    println("ini td = " , td);
    td = (td + ((((int)random(0 , rows)) % 3) - 1) + 8) % 8 ;
    println(" result td = " , td);
    
    println("ini tx = " , tx , " , ty = " , ty);
    nx = (tx + dir[td][0] + rows) % rows ;
    ny = (ty + dir[td][1] + cols) % cols ;
    println("result nx = " , nx , " , ny = " , ny);
  }
  
  void reverseStep()
  {
    td = (td + 4) % 8 ;
    tx = (tx + dir[td][0] + rows) % rows ;
    ty = (ty + dir[td][1] + cols) % cols ;
  }
  
  void newStep()
  {
    println("newStep , nx = " , nx , " , ny = " , ny);
    tx = nx ;
    ty = ny ;
  }
  
  void run()
  {
    
  }
  
  void display()
  {
    //ellipse(location.x , location.y , 8 , 8);
    ellipse(tx * resolution , ty * resolution , 8 , 8);
  }
}
