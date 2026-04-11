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

  TaskModel t1 = TaskModel.fromMap(taskMap);
  print(t1.title);

  Map<String, dynamic> productMap = {
    'name': 'apple', 
    'price': 10,
    'quantity': 5
  };

  ProductModel product = ProductModel.fromMap(productMap);
  print(product.name);

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

class TaskModel{
  String? title; 
  String? description; 
  String? date ;

  TaskModel(this.title, this.description, this.date);
  TaskModel.fromMap(Map<String, dynamic> map){
    title = map['title'];
    description = map['description'];
    date = map['date'];
  }
}

class ProductModel{
  String? name; 
  double? price; 
  int? quantity ;

  ProductModel(this.name, this.price, this.quantity);
  ProductModel.fromMap(Map<String, dynamic> map){
    name = map['name'];
    price = map['price'];
    quantity = map['quantity'];
  }
}

