import 'oop.dart';
void main(){
//   Book book1 = Book(title: 'Book 1');
  
//   print(book1.pages);
//   book1.getPages();

//   book1.setPages(-100);
//   book1.pages = 100;

// book1.display();

BankAccount b1 = BankAccount('ahmed', 1000);
b1.deposit(500);
b1.withdraw(100);
print(b1.balance);


Cart c1 = Cart();
c1.add('Apple', 30);
c1.add('Orange', 20);
c1.remove('Apple', 30);
print(c1.total);
print(c1.items);
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