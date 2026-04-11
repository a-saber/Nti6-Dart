void main(){
  Map<String, dynamic> map = {
    'name': 'ahmed', 
    'age': 25, 
    'isMale': true
  };

  UserModel u1 = UserModel('ahmed', 25, true);
  u1.name = map['name'];

  // UserModel u2 = convert(map);

}
// UserModel convert(Map<String, dynamic> map){

// }

class UserModel{
  String? name; 
  int? age ; 
  bool? isMale ;

  UserModel(this.name, this.age, this.isMale);
}