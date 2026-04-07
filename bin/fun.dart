
int calcaulate (int x1, int x2)
{
  int sum = x1 + x2;
  return sum;
}

void displayInfo({ required String name, int age = 18}){
  print('Name: $name, Age: $age');
}

int sum ([int x1 =0, int x2 =0, int x3 =0])
{
  return x1 + x2 + x3;
}

void main(){
  sum(5, 6, 7);

  displayInfo( name: 'ahmed',);



  int result = calcaulate(10, 20);
  print(result);
}