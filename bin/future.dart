void main() async{
  process1().then((v){
    process4();
  });
  process2();
  process3();

}

Future process1() async{
  print('start process 1');
  await Future.delayed(Duration(seconds: 2));
  print('end process 1');
}
process2(){
  print('process 2');
}
process3(){
  print('process 3');
}
process4(){
  print('process 4');
}

