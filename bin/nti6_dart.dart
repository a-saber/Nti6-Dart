import 'scopes.dart';

void main(){

  myGlobalVariable +6;
  // DataType variableName = value;
  // int age = 25;
  // String name = 'John';
  // print(name[name.length -1]);
  // print(name.contains('o', 2));
  // int age = 30;
  
  // if(age < 18){
  //   print('Child');
  // }
  // else if(age >= 18 && age <60){
  //   print('Adult');
  // }
  // else{
  //   print('Old Man');
  // }

  /*
degree 100:85 A
degree 84:70 B
degree 69:50 C
degree 49:0 F

  */

  /*
  🔹 Problem 1: Traffic Fine Calculator
User inputs speed limit, actual speed, and if they have a license
Speed more than 20 = fine 1000
Speed over by 1–20 = fine 500
No license? Add 500 to the fine
fine;
  */
  int speedLimit = 60;
  int actualSpeed = 85;
  bool hasLicense = false;
  int fine = 0;

  int speedDifference = actualSpeed - speedLimit;
  if(speedDifference > 20){
    fine = 1000;
  }
  else if(speedDifference > 0){
    fine = 500;
  }

  if(!hasLicense){
    fine += 500;
  }
  
  print('Your fine is: $fine');

/*
🔹 Problem 2: Multi-Tier Parking Fee Calculator

First 2 hours: free

Hours 3–5: 10 per hour

After that: 20 per hour

+50 flat if parked on weekend
*/
 int hours = 6;
 bool isWeekend = false;

 int cost = 0;
 if(hours<=2){

 }
 else if(hours <= 5){
  cost = (hours -2 )*10;
 }
 else{
  cost = 30 + ((hours - 5) * 20);
 }

 if(isWeekend){
  cost += 50;
 }
 print('Your parking fee is: $cost');


  // double ageAsDouble = age.toDouble();
  // double x = 20.9;
  // print(x.truncate());

  // print(''' he says: "My Name is $name , my age is $age"
  // welocome to dart programming language, is it fun? $isDartFun
  // Hello world, this is my first dart program
  // ''');


  // camelCase
  /*
  int myAge = 25;
  */

  // snake_case
  /*
  int my_age = 25;
  */

  // PascalCase
  /*
  int MyAge = 25;
  */
}

class UserData{}