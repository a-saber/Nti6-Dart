void main(){
  // List<int> x = [1, 2, 3,];
  // x.add(4);
  // x.addAll([5, 6, 7, 1]);
  // bool result = x.remove(10);
  // int result2 = x.removeAt(x.length-1);
  // // x.insert(1, 100);
  // print(result);
  // print(result2);
  // print(x);
  // x.insert(7, 100);
  // print(x);
  // print(x[1]);
  // x[1]= 200;
  // print(x);

  // x.removeRange(0, 2);
  // print(x);
  // print(x.contains(6));


  List<int> n2 = List.filled(10, 1);
  List<int> n3 = List.generate(10, (int index)=> index + 1);
  print(n3);

// 2D List
  // List<List<String>> seats = [
  //   ['b', 'f', 'f', 'b'],
  //   ['b', 'b', 'f', 'b'],
  //   ['f', 'f', 'b', 'f'],
  // ];
  List<List<bool>> seats = 
  List.generate(5, (index)=> List.generate(5, (index)=> false));
  print(seats);
  seats[0][0] = true;
  print(seats);

List c = List.from([1,2,3]);
print('------------------');
  List<List<bool>> seats2 = 
  List.generate(5,(index) => List.filled(5, false));
  print(seats2);
  seats2[0][0] = true;
  print(seats2);
  
}
//int Function(int) generator
int generator(int index) => index + 1;
