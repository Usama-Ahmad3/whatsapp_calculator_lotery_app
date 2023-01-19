import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maintenance_box/models/Model.dart';
import 'package:http/http.dart' as http;

class Forget extends StatefulWidget{
  const Forget({super.key});

  @override
  State<StatefulWidget> createState() =>ForgetState();
}
class ForgetState extends State<Forget>{
  List<Model> postList = [];

  Future<List<Model>> getApi()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        postList.add(Model.fromJson(i));
      }
      return postList;
    }
    else{
      return postList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getApi(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }
          else{
        return ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
          return Card(child: Column(
            children: [
              Text(postList[index].title.toString()),
              Text(postList[index].title.toString()),
              Text(postList[index].userId.toString())
            ],
          ));
        });}
      },),
    );
  }
}