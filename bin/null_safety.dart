class User{

  int x=5;
  late int y;

  void testLate(){
    int sum = y + 5;
    print(sum);
  }


  int? z ;

  void testNullCheckOp(){
    // z = 10;
    int sum = (z??0) + 5;
    print(sum);
  }
}
void main(){
  User user = User();

  user.testNullCheckOp();
}