void main(){
  Map<String, dynamic> map = {
    'name': 'ahmed', 
    'age': 25, 
    'isMale': true
  };
  UserModel u1 = UserModel(map['name'], map['age'], map['isMale']);
  u1.name = map['name'];

  UserModel u2 = UserModel.fromMap(map);
  print(u2.name);

  Map<String, dynamic> taskMap = {
    'title': 'task title', 
    'description': 'task desc', 
    'date': "2023-01-01"
  };

  // TasModel t1 = TaskModel.fromMap(taskMap);
  // print(t1.title);

}


class UserModel{
  String? name; 
  int? age ; 
  bool? isMale ;

  UserModel(this.name, this.age, this.isMale);
  UserModel.fromMap(Map<String, dynamic> map){
    name = map['name'];
    age = map['age'];
    isMale = map['isMale'];
  }
}

