import 'dart:convert';
import 'package:flutter/Material.dart';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget{
  const Signup({super.key});

  @override
  State<StatefulWidget> createState() => SignupState();
}
class SignupState extends State<Signup>{
  List<Photos> photosList = [];
  Future<List<Photos>> getPhoto ()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        Photos photo = Photos(furl: i['url'], ftitle: i['title'],fid: i['id']);
        photosList.add(photo);
      }
      return photosList;
    }
    else{
      return photosList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
      future: getPhoto(),
      builder: (context, snapshot) {
        if(!snapshot.hasData){
          return const Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.builder(
            itemCount: photosList.length,
            itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(snapshot.data![index].furl.toString()),
              ),
              title: Text(photosList[index].ftitle.toString()),
              subtitle: Text('ID ${snapshot.data![index].fid}'),
            );
          },);
        }
      },
      ),
    );
  }
}
class Photos {
  String ftitle;
  String furl;
  int fid;
  Photos({required this.ftitle,required this.furl,required this.fid});
}