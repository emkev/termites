
/* 2015.12.20 23:44 start , ... 
   2015.12.25 20:57 add multiple termites .
*/

//termite t ;
chips c ;
ArrayList<termite> ts ;

void setup()
{
  size(360 , 240);
  //t = new termite();
  c = new chips();

  ts = new ArrayList<termite>();
  for(int i = 0 ; i < 10 ; i++)
  {
    ts.add(new termite());
  }
  
}

void draw()
{
  background(200);
  for(int j = 0 ; j < ts.size() ; j++)
  {
    termite t = ts.get(j);
    t.newStepTry();
    if(c.field[t.tx][t.ty]== 1 && c.field[t.nx][t.ny] == 0)
    {
      c.setFactor(t.tx , t.ty , 0);
      t.newStep();
      c.setFactor(t.tx , t.ty , 1);
    }
    else if(c.field[t.tx][t.ty] == 1 && c.field[t.nx][t.ny] == 1)
    {
      t.reverseStep();
    }
    else
    {
      t.newStep();
    }
    
    t.display();
  } /* for(int j = 0 ; j < 10 ; ... */
  
  c.display();
}
