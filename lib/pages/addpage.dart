
import 'package:bookapp_frontend/service/postservice.dart';
import 'package:flutter/material.dart';

class addpage extends StatefulWidget {
  const addpage({super.key});

  @override
  State<addpage> createState() => _addpageState();
}

class _addpageState extends State<addpage> {
  @override


  TextEditingController bookName =new TextEditingController();
  TextEditingController authorName=new TextEditingController();
  TextEditingController  publisherName =new TextEditingController();


  void SendValuetoApi() async
  {
    final response =await PostApiService().sendData(bookName.text, authorName.text, publisherName.text);
    if (response["status"] == "success") {

      print("Successfully added");

    }
    else{
      print("error");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller:bookName,
              decoration: InputDecoration(
                  hintText: "Name ",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: authorName,
              decoration: InputDecoration(
                  hintText: "author name",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller:publisherName,
              decoration: InputDecoration(
                  hintText: "publisher name",
                  border: OutlineInputBorder()
              ),
            ),





            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(

                  onPressed: SendValuetoApi, child: Text("send")),
            ),
          ],
        ),
      ),
    );
  }
}
