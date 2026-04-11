import 'oop.dart';

void testPoly(PrimaryStudent p){
    p.grade;
}
void testPrinter(Printer p){
    p.printContent('Hello');
}
void main(){
    NetworkPrinter np = NetworkPrinter();
    BluetoothPrinter bp = BluetoothPrinter();

    testPrinter(np);
    testPrinter(bp);


    // Person p = Person('Mo', true);
    // Student s = Student('A',  'Mo',true);
    // PrimaryStudent ps = PrimaryStudent('subject 01' ,'A', 'Mo',true);
    // Cart c = Cart();
    // testPoly(p);
    // testPoly(s);
    // testPoly(ps);
    // testPoly(c);

// PrimaryStudent s1 = PrimaryStudent('subject 01' ,'A', 'Mo',true);
// s1.display();
//      Lab l1 = Lab('Lenovo');
//      l1.price = -10;
//      l1.setPrice(-10);

//      print(l1.price);
  


//   l1.display();
//   Book book1 = Book(title: 'Book 1');
  
//   print(book1.pages);
//   book1.getPages();

//   book1.setPages(-100);
//   book1.pages = 100;

// book1.display();

// BankAccount b1 = BankAccount('ahmed', 1000);
// b1.deposit(500);
// b1.withdraw(100);
// print(b1.balance);


// Cart c1 = Cart();
// c1.add('Apple', 30);
// c1.add('Orange', 20);
// c1.remove('Apple', 30);
// print(c1.total);
// print(c1.items);
}

/*
Bank Account

- name
- _balance

deposit
withdraw
*/

/*


*/

/*
Cart 
- _list<String> items
- _total

add(itemName, price)
remove(itemName, price)
*/


/*

Student

- name
- _degree

String calulateGrade() // 'A', 'B', 'C', 'D', 'F'

*/


/*
#Animal
- name
- age

- display

#Bird 
- canFly

#Cat
- isPet


*/

/*

#Vehicle
- brand
- display(){}
- makeSound();

#Car extends Vehicle
- maxSpeed
- display(){}

#Motorcycle extends Vehicle
- hasHelmet
- display(){}

*/