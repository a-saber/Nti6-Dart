// Global Scope
    int myGlobalVariable=5;

void main(){ // main Scope

 myGlobalVariable+6;
  // Scope 1
  {
    int x;

    myGlobalVariable +6;
    // Scope 1.1
    {
      myGlobalVariable +10;
    }
  }
 myGlobalVariable+6;

  // Scope 2
  {
    int x;
     myGlobalVariable=5;

    
  }
}