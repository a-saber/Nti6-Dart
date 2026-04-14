import 'package:dio/dio.dart';

void main()async{
  newTask();
}

login()async{
  try{
    Dio dio = Dio();
    var response = await dio.post(
      'https://ntitodo-production-b847.up.railway.app/api/login',
      data: FormData.fromMap({
        'username': 'ahmedsaber0',
        'password': '123456'
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