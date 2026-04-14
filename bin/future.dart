void main() async {
  // customerOrdering().then((v){
  //   prepareOrder().then((v){
  //     endOrder();
  //   });
  // });

  await customerOrdering();
  await prepareOrder();
  endOrder();


}

Future customerOrdering()async {
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



