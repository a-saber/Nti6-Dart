void main(){
  List<int> x = [1, 2, 3,];
  x.add(4);
  x.addAll([5, 6, 7, 1]);
  bool result = x.remove(10);
  int result2 = x.removeAt(x.length-1);
  // x.insert(1, 100);
  print(result);
  print(result2);
  print(x);
  x.insert(7, 100);
  print(x);
  print(x[1]);
  x[1]= 200;
  print(x);

  x.removeRange(0, 2);
  print(x);
  print(x.contains(6));
  
}