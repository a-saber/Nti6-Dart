import 'dart:io';

import 'package:dio/dio.dart';

void main()async{
  displayAuthMenu();
  String authChoice = input();
  if(authChoice == '1'){
    String accessToken = login();
    displayTasksMenu();
    String taskChoice = input();
    // if(taskChoice == '1'){
    //   newTask(accessToken);
    // }
    // else if(taskChoice == '2'){
    //   showTasks(accessToken);
    // }
    // else if(taskChoice == '3'){
    //   updateTask(accessToken);
    // }
    // else if(taskChoice == '4'){
    //   deleteTask(accessToken);
    // }
    // else{
    //   print('Invalid');
    // }
  }
  else if(authChoice == '2'){
    register();
  }
  else{
    print('Invalid');
  }


}
void displayTasksMenu(){
  print('1 New Task');
  print('2 Show Tasks');
  print('3 Update Task');
  print('4 Delete Task');
}
String input({String? prompt}){
    String? userInput;
   do{ 
    print('$prompt');
    userInput = stdin.readLineSync();
    }while(userInput == null || userInput.isEmpty);

    return userInput;
}
displayAuthMenu(){
  print('1 Login');
  print('2 Register');
}

login()async{
  try{
    String username = input(prompt: 'Enter Username');
    String password = input(prompt: 'Enter Username');
    Dio dio = Dio();
    var response = await dio.post(
      'https://ntitodo-production-b847.up.railway.app/api/login',
      data: FormData.fromMap({
        'username': username,
        'password': password
      })
    );

    print(response.data.toString());
  }
  catch(e){
    
    if(e is DioException){
      print((e.response?.data as Map<String, dynamic>)['message']);
    }
    else{
      print('error through login request: ${e.toString()}');
    }
  }

}
register()async{
    Dio dio = Dio();
  var response = await dio.post(
    'https://ntitodo-production-b847.up.railway.app/api/register',
    data: FormData.fromMap({
      'username': 'ahmedsaber001',
      'password': '123456'
    })
  );

  print(response.data.toString());

}
newTask()async{
  try{
    Dio dio = Dio();
    var result = await dio.post(
      'https://ntitodo-production-b847.up.railway.app/api/new_task',
      data: FormData.fromMap({
        'title': 'task 1',
        'description': 'task 1 desc'
      }),
      options: Options(
        headers: {
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc3NjE4MzMwMCwianRpIjoiOTdiMDM5NmItNjUxZC00OGQxLTkyN2EtMWMzZmYxNjk5MzIyIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6NTcsIm5iZiI6MTc3NjE4MzMwMCwiY3NyZiI6ImMzZTA2MDdhLWUzNjMtNDUwMC05MWQyLTY4YmJhZDk0ZjIwNCIsImV4cCI6MTc3NjE4NDIwMH0.SQxQSSgoMyNegPTGLY2q-Hwvy46KvTzq151deyzNI80'
        }
      )
    );
    print(result.data.toString());
  }
  catch(e){
    
    if(e is DioException){
      print((e.response?.data as Map<String, dynamic>)['message']);
    }
    else{
      print('error through login request: ${e.toString()}');
    }
  }

}
fetchWeather()async{
  try{
    Dio dio = Dio();
    var result = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather',
     queryParameters: {
      'lat': '30.5877893',
      'lon': '31.4818003',
      'appid': '39ef56aa87e0f9d833e66cd9111de959'
     }
    );
    print(result.data.toString());
  }
  catch(e){
    
    if(e is DioException){
      print((e.response?.data as Map<String, dynamic>)['message']);
    }
    else{
      print('error through login request: ${e.toString()}');
    }
  }

}

