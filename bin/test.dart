import 'oop.dart';
void main(){
  Book book1 = Book(title: 'Book 1');
  
  print(book1.pages);
  book1.getPages();

  book1.setPages(-100);
  book1.pages = 100;

book1.display();

}