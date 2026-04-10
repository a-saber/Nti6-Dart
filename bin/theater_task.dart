import 'dart:io';

List<List<bool>> seats = List.generate(5, (index)=> List.filled(5, false));
List<Map<String, dynamic>> usersData = [];
void main(){


    while(true){
        displayMenu();
        String choice = input();
        if(choice == '1'){
            newBook();
        }
        else if( choice == '2'){
            showSeats();
        }
        else if( choice == '3'){
            showUsersData();
        }
        else {
            print("See You Back");
            return;
        }

    }

}
displayMenu(){
    print("Welcome To Our Theater");
    print("press 1 to book new seat");
    print("press 2 to show the theater seats");
    print("press 3 to show users data");
    print("press 4 to exit");
}
String input({String? prompt}){
    String? userInput;
   do{ 
    print('Enter input');
    userInput = stdin.readLineSync();
    }while(userInput == null || userInput.isEmpty);

    return userInput;
}
newBook(){
    int row = int.tryParse(input())?? -1;
    int col = int.tryParse(input())?? -1;
    String name = input();
    String phone = input();

    if( row <0 || row >4 || col <0 || col >4){
        print('invalid input');
        return;
    }

    // check if seat is available
    if(seats[row][col]){
        print('this seat is already booked');
        return;
    }

    seats[row][col] = true;
    usersData.add({
        'name': name,
        'phone': phone,
        'row': row,
        'col': col
    });
    print('Seat Booked Successfully');
}
showSeats(){
    print('Show Seats');
    print(seats);
}
showUsersData(){
    print('Show Users Data');
    print(usersData);
}



/*
Task: Theater Booking System
Requirements:

A 2D array represents the theater seats (5x5 for example).
Each seat is either empty (E) or booked (B) .
When a user books a seat, they provide:
Name
Phone number
Check if the seat is available before booking.
Store booking details in a map (seat_position -> user data).
Allow multiple users to book seats until they choose to exit.
At the end, print the seat layout and the booking list .
Example For Run:
"Welcome To Our Theater" 

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>2
Theater Seats:
E E E E E
E E E E E
E E E E E
E E E E E
E E E E E

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>1
Enter row (1-5) or 'exit' to quit: 
input=>3
Enter column (1-5): 
input=>4
Enter your name: 
input=>Ahmed
Enter your phone number: 
input=>010456755555
Seat booked successfully!

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>2
Theater Seats:
E E E E E
E E E E E
E E E B E
E E E E E
E E E E E


press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>3

Users Booking Details:
Seat 3,4: Ahmed - 010456755555

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>4

"See You Back" 

*/