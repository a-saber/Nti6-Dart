
class Vehicle{
  String? brand;
  Vehicle(this.brand);
  void display(){
    print(brand);
  }
}

class Car extends Vehicle{
  int? maxSpeed;
  Car(this.maxSpeed, super.brand);

  @override
  void display() {
    print(maxSpeed);
    super.display();
  }
}

void main(){
  Car c1 = Car(200, 'Toyota');
  c1.display();
}



abstract class Animal{
  String? name;
  int? age;

  Animal(this.name, this.age);
  void display(){
    print(name);
    print(age);
  }

  void makeSound();
}
class Dog implements Animal{
  @override
  String? name;
  @override
  int? age;
  Dog(this.name, this.age);

  @override
  void display() {
  }

  @override
  void makeSound() {
    print('Woof woof');
  }
}

class Bird extends Animal{
  bool? canFly;
  Bird(this.canFly, super.name, super.age);

  @override
  void display() {
    super.display();
    print(canFly);
  }

  @override
  void makeSound() {
    print('Chirp chirp');
  }
}

class Cat extends Animal{
  bool? isPet;
  Cat(this.isPet, super.name, super.age);

  
  @override
  void display() {
    super.display();
    print(isPet);
  }

  @override
  void makeSound() {
    print('Meow meow');
  }
}









abstract class Printer {
  void printContent(String content);
  void printContent2(String content){

  }
}

class TestPrinter implements Printer{
  @override
  void printContent(String content) {
    print('Prining from test printer: $content');
  }

  @override
  void printContent2(String content) {
    print('Prining from test printer2: $content');
  }

}
class NetworkPrinter extends Printer{

  @override
  void printContent(String content){
    print('Prining from network: $content');
  }

  @override
  void printContent2(String content){
    print('Prining from network2: $content');
  }
}
class BluetoothPrinter extends Printer{

  @override
  void printContent(String content){
    print('Prining from bluetooth: $content');
  }
}


class Person {
  String? name;
  bool? isMale;
  Person(this.name, this.isMale);

  void display(){
    print(name);
    print(isMale);
  }

}

class Student extends Person{
  String? grade;
  Student(this.grade,  super.name, super.isMale);

  @override
  void display(){
    print(grade);
    super.display();
  }

}

class PrimaryStudent extends Student{
  String? subject;
  PrimaryStudent(this.subject, super.grade, super.name,super.isMale);

  @override
  void display(){
    print(subject);
    super.display();
  }

}
// void main(){
//   Student s1 = Student('A', name: 'Mo',isMale :true);
//   s1.display();

// }













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



class Lab{
  String? brand;
  int _price =0;
  void setPrice(int price){
    if(price > 0 ) _price = price;
  }
  set price(int price){
    if(price > 0 ) _price = price;
  }

  int get price => _price;

  Lab(this.brand);

  void display(){
    print('Brand: $brand');
  }

}
// void main(){
//   Lab l1 = Lab('Lenovo');
//   l1._price;


  


//   l1.display();
// }