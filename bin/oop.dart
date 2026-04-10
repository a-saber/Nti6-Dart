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

void main(){
  Book book1 = Book(title: 'Book 1');
  book1.author;
  book1._pages;
  book1.title;


  Book book2 = Book(title: "Book 2", author: "Author 2", pages: 200);
  book1.display();
  book2.display();
}