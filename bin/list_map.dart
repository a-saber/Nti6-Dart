void main(){
  // List<int> numbers = [30, 12, 7, 20, 3, 15];
  // for(int i =0; i< numbers.length; i++){
  //   print('number: ${numbers[i]}, ${numbers[i]> 10}');
  //   if(numbers[i]> 10){
  //     numbers[i]*= 2;
  //   }
  //   else{
  //     numbers.removeAt(i);
  //     i--;
  //   }
  // }
  // print(numbers);


  // Map<String, int> products = {
  //   "apple": 10,
  //   "banana": 5,
  //   "orange": 8,
  // };
  // products.forEach((k, v){
  //   products[k] = v+2;
  //   if((v+2) > 10){
  //     print('key is $k, value is ${products[k]}');
  //   }
  // });


  List<Map<String, dynamic>> users = [
    {"name": "Ahmed", "age": 22},
    {"name": "Ali", "age": 17},
    {"name": "Sara", "age": 25},
  ];

  List<String> names = [];
  int ageSum = 0;
  for(int i=0; i< users.length; i++){
    names.add(users[i]['name']);
    int age =users[i]['age'];
    ageSum += age;
    if(age > 18){
     print( users[i]['name']);
    }
  }
  print('average : ${ageSum/users.length}');
  print(names);

}

/*
🟢 Task 1: فلترة + تعديل

عندك ليست أرقام:

List<int> numbers = [5, 12, 7, 20, 3, 15];
المطلوب:
طلع الأرقام الأكبر من 10
اضرب كل رقم ×2
اطبع الناتج النهائي



🟢 Task 2: التعامل مع Map
Map<String, int> products = {
  "apple": 10,
  "banana": 5,
  "orange": 8,
};
المطلوب:
زوّد سعر كل منتج +2
لو السعر بقى أكبر من 10 اطبعه

🟢 Task 3: List of Maps (مهم 🔥)
List<Map<String, dynamic>> users = [
  {"name": "Ahmed", "age": 22},
  {"name": "Ali", "age": 17},
  {"name": "Sara", "age": 25},
];
المطلوب:
اطبع أسماء الناس اللي أكبر من 18
احسب متوسط الأعمار
اعمل ليست جديدة فيها الأسماء بس






🟢 Task 4: Count occurrences
List<String> items = ["apple", "banana", "apple", "orange", "banana", "apple"];
المطلوب:
اعمل Map يحسب عدد تكرار كل عنصر

👉 الناتج:

{
  "apple": 3,
  "banana": 2,
  "orange": 1
}
🟢 Task 5: دمج بيانات
List<Map<String, dynamic>> students = [
  {"id": 1, "name": "Ahmed"},
  {"id": 2, "name": "Sara"},
];

List<Map<String, dynamic>> grades = [
  {"student_id": 1, "grade": 90},
  {"student_id": 2, "grade": 80},
];
المطلوب:
اربط كل طالب بدرجته
الناتج يكون:
[
  {"id": 1, "name": "Ahmed", "grade": 90},
  {"id": 2, "name": "Sara", "grade": 80}
]
🟢 Task 6: إزالة التكرار
List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
المطلوب:
شيل التكرار بدون استخدام Set (بـ loop بس)
🟢 Task 7: أقوى شوية 🔥
List<Map<String, dynamic>> orders = [
  {"id": 1, "price": 100, "status": "done"},
  {"id": 2, "price": 200, "status": "pending"},
  {"id": 3, "price": 150, "status": "done"},
];
المطلوب:
احسب مجموع الطلبات اللي status = "done"
طلع أغلى طلب
اعمل ليست فيها الطلبات pending بس
*/