

import 'package:bookapp_frontend/pages/addpage.dart';
import 'package:bookapp_frontend/pages/viewpage.dart';
import 'package:flutter/material.dart';


class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple,Colors.pinkAccent]
            )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>addpage()));
                    }, child: Text("Add item"))),
            SizedBox(height: 10,),
            SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>viewpage()));
                    }, child: Text("view all"))),

          ],
        ),
      ),
    );
  }
}
