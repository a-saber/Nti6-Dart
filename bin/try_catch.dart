void main(){  
  try{
    String x = '10x';
    int y = int.parse(x);

    print(y);
  }
  catch(error){
    print('error: ${error.toString()}');
  }

  print('object');


}