class Person {
  String? name;
  bool? isMale;
  Person({ this.name, this.isMale});

  void display(){
    print(name);
    print(isMale);
  }

}

class Student extends Person{
  String? grade;
  Student(this.grade,{ super.name, super.isMale});

  @override
  void display(){
    super.display();
    print(grade);
  }

}
void main(){
  Student s1 = Student('A', name: 'Mo',isMale :true);
  s1.display();

}













// class Student{
//   String name;
//   double _degree = 0;
//   set degree(double degree){
//     if(degree >=0 && degree <=100) _degree = degree;
//   }
//   double get degree => _degree;

//   String calculateGrade(){
//     if(_degree >= 85) return 'A';
//     else if(_degree >= 70) return 'B';
//     else if(_degree >= 50) return 'C';
//     else return 'F';
//   }


//   Student(this.name);
// }


class Cart{
  List<String> _items = [];
  int _total = 0;

  get total => _total;
  get items => _items;

  void add(String item, int price){
    _items.add(item);
    _total += price;
  }

  void remove(String item, int price){
    _items.remove(item);
    _total -= price;
  }
}


class BankAccount {
  String name;
  int _balance = 0;
  set balance(int balance) {
    if(balance>0) _balance = balance;
  }
  int get balance => _balance;

  BankAccount(this.name, int balance){
    this.balance = balance;
  }

  deposit(int amount){
    if(amount >0){
      _balance += amount;
    }
  }

  withdraw(int amount){
    if(amount >0  && amount <= _balance){
      _balance -= amount;
    }
  }

}












class Book {
  String? title;
  String? author;
  int? _pages;

  int? getPages()=> _pages;
  // getter for _pages
  int? get pages => _pages;
  void setPages(int pages){
    if(pages>0) _pages = pages;
  }
  // setter for _pages
  set pages(int? pages) {
    if (pages != null && pages > 0) {
      _pages = pages;
    }
  }

  void display(){
    print('Title: $title, Author: $author, Pages: $_pages');
  }

  Book({required this.title, this.author, int? pages}) {
    this.pages = pages;
  }

}

// void main(){
//   Book book1 = Book(title: 'Book 1');
//   book1.author;
//   book1._pages;
//   book1.title;


//   Book book2 = Book(title: "Book 2", author: "Author 2", pages: 200);
//   book1.display();
//   book2.display();
// }