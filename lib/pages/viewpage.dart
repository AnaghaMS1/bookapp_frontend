
import 'package:bookapp_frontend/model/postmodel.dart';
import 'package:bookapp_frontend/service/postservice.dart';
import 'package:flutter/material.dart';


class viewpage extends StatefulWidget {
  const viewpage({super.key});

  @override
  State<viewpage> createState() => _viewpageState();
}

class _viewpageState extends State<viewpage> {
  Future<List<Posts>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PostApiService().getPosts();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),

        ),
        body: FutureBuilder(
            future:data ,
            builder: (context,snapshot){
              if(snapshot.hasData &&snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (value,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("Book Name :"+snapshot.data![index].bookName.toString()),
                              subtitle: Text("Author Name:"+snapshot.data![index].authorName.toString()+"\n"+"Publisher Name:"+snapshot.data![index].publisherName.toString()+"\n"),
                              leading: CircleAvatar(
                                child:Text(snapshot.data![index].bookName.toString()[0]) ,
                              ),
                            )
                          ],
                        ),
                      );
                    }
                );
              }
              else{
                return Text("Fetching data");
              }
            }
        )
    );
  }
}
