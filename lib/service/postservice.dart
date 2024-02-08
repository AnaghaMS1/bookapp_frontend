import 'dart:convert';
import 'package:bookapp_frontend/model/postmodel.dart';
import 'package:http/http.dart'as http;

class PostApiService{
  Future<dynamic> sendData(
      String bookName,
      String authorName,
      String publisherName,

      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://192.168.118.18:3001/book/add");

    var response = await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {

          "bookName":bookName,
          "authorName":authorName,
          "publisherName":publisherName



        })

    );
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }


  }


}