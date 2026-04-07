// Global Scope
    int myGlobalVariable=5;

void main(){ // main Scope

 myGlobalVariable+6;
  // Scope 1
  {
    myGlobalVariable +6;
    // Scope 1.1
    {
      myGlobalVariable +10;
    }
  }
 myGlobalVariable+6;

  // Scope 2
  {
     myGlobalVariable=5;

    
  }
}