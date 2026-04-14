void main() async {
  process1().then((value) => process2());
 
  process3();

}

customerOrdering()async {
  print('start Customer Order ');
  // delay
  await Future.delayed(Duration(seconds: 2));
  print('end Customer Order ');
}
prepareOrder()async{
  print('Start Preparing Order ');
  // delay
  await Future.delayed(Duration(seconds: 2));

  print('End Preparing Order ');
}
endOrder(){
  print('End Order');
}



