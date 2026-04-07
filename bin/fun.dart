
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


  List<int> numbers = [1, 2, 3, 4, 5];
  print(sumOfList(numbers));

  Map<String, int> products = {
    "apple": 10,
    "banana": 5,
    "orange": 8,
  };
  print(getAvg(products: products));
}

/*

Task 01 => positional parameters
input => list of numbers
return => sum of numbers
*/
int sumOfList(List<int> numbers){
  int sum =0;
  numbers.forEach((x){
    sum += x;
  });
  return sum;
}
/*
Task 02 => named parameters
input => map of products and their prices
example: {"apple": 10, "banana": 5, "orange": 8}
return => average price of all products
*/

double getAvg({required Map<String, int> products}){
  int sum =0;
  products.forEach((k, v){
    sum += v;
  });
  return sum/products.length;
}