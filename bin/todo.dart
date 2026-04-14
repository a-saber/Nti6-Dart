import 'package:dio/dio.dart';

void main()async{
  login();
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
    Dio dio = Dio();
  var response = await dio.post(
    'https://ntitodo-production-b847.up.railway.app/api/new_task',
    data: FormData.fromMap({
      'title': 'new from dart 01',
      'description': 'new 01'
    }),
    options: Options(
      headers: {
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc3NjE3OTM3MCwianRpIjoiZmUxOGFlYjktNjczZC00NDU5LTlmNzktMDQxYWM0ODhiNTYzIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6NTcsIm5iZiI6MTc3NjE3OTM3MCwiY3NyZiI6ImEyOGI3OGY2LTE2NGMtNGZjMS1iOTk3LTMwYjZlNGRjY2U3ZSIsImV4cCI6MTc3NjE4MDI3MH0.-JdLPACubgWqs6k7hIJlSeJt2g5IIon4UUD3DjP5jcA'
      }
    )
  );

  print(response.data.toString());

}