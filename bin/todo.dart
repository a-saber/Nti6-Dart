import 'package:dio/dio.dart';

void main()async{
  login();
}

login()async{
    Dio dio = Dio();
  var response = await dio.post(
    'https://ntitodo-production-b847.up.railway.app/api/login',
    data: FormData.fromMap({
      'username': 'ahmedsaber',
      'password': '123456'
    })
  );

  print(response.data.toString());

}
