


void main(){
  int start = 0;
  int end = 10;
  
  int sum = 0;
  int evenCount =0;
  int oddCount =0;

  for(int i =start; i<= end; i++){
     print(i);
     sum += i;

     if(i.isEven){
      evenCount++;
     }
     else{
      oddCount++;
     }
  }
  print('Sum: $sum');

  for(int i = 0; i<5; i++){
    String x = '';
    for(int j = 0; j<5; j++){
      x += '*';
    }
    print(x);
    print('');
  }

  for(int i=0; i<5; i++){
    String x = '';
    for(int j=0; j<= i; j++ ){
      x += '*';
    }
    print(x);
  }

  print(3>=5);

  for(int i=0; i<5; i++){
    String x = '';
    for(int j=5; j> i; j-- ){
      x +='*';
    }
    print(x);
    // test();
  }
int test()=> 5;
  /*


1. Print all numbers between two inputs

2. Sum of first N natural numbers

3. Count even and odd numbers

4. Rectangle of stars using nested loops

******
******  
******  
******

Right-angled triangle pattern
*
**
***
****
*****


*****
****
***
**
*
  */

  // for(int i = 4; i>=0 ; i--){
  //   print(i);
  // }
  // print('');

  // int i = 4;
  // while(i>=0){
  //   i--;
  //   if(i == 2){
  //     break;
  //   }
  //   print(i);
    
  // }
}