
void main(){
  // int x =10;
  // addOne(x);
  // print(x);

  // List<int> myList = [1, 2, 3];
  // addOneToList(List.from(myList));
  // print(myList);

  Map m1 = {
    'name': 'ahmed',
    'age': 25,
  };
  Map m2 = Map.from(m1);
  m2['name'] = 'ali';
  print(m1);
  print(m2);

}
void addOneToList(List<int> x){
  x.add(1);
} 
void addOne(int x){
  x += 1;
}
