import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class Whatsapp extends StatefulWidget{
  const Whatsapp({super.key});

  @override
  State<StatefulWidget> createState() => WhatsappState();
}
class WhatsappState extends State<Whatsapp>{
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    return DefaultTabController(length: 4, child:Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: const Icon(CupertinoIcons.mail_solid,size: 30),
        onPressed: (){ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Not Available')));},
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('WhatsApp'),
        bottom: TabBar(
          indicatorColor: Colors.white,
          isScrollable: false,
          tabs: [
            const Tab(child:Icon(Icons.camera_alt)),
            Tab(child:Badge(
              position: BadgePosition.topEnd(),
              badgeColor: Colors.white,
              animationDuration: const Duration(seconds: 3),
                shape: BadgeShape.circle,
                animationType: BadgeAnimationType.slide,
                child: const Text('CHATS'))),
            const Tab(child:Text('STATUS')),
            Tab(child:Badge(
              animationType: BadgeAnimationType.slide,
                shape: BadgeShape.circle,
                animationDuration: const Duration(seconds: 3),
                badgeColor: Colors.white,
                child: const Text('CALLS'))),
          ],
        ),
        actions: [
          const Icon(Icons.camera_alt),
          const SizedBox(width: 20,),
          const Icon(Icons.search),
          const SizedBox(width: 10,),
          PopupMenuButton(
            icon: const Icon(Icons.more_horiz),
            itemBuilder: (context) => [
              const PopupMenuItem(
                  value: '1',
                  child:Text('New Groups')),
              const PopupMenuItem(
                  value: '2',
                  child: Text('Settings')),
              const PopupMenuItem(
                  value: '3',
                  child:Text('LogOut'))
            ],),
          const SizedBox(width: 20,)
        ],
      ),
      body: TabBarView(
        children: [
          const Padding(
            padding: EdgeInsets.all(35.0),
            child: Center(child: Text('Camera is not supported yet',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,),)),
          ),
          ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/1628233042953.jpg')),
            title: const Text('Usama',style: TextStyle(fontSize: 30),),
            subtitle: const Text('Where are you',style: TextStyle(fontSize: 20),),
            trailing: Text('${date.hour}:${date.minute}\n time'),
          )),
          ListView.builder(
            itemCount: 40,
            itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/FB_IMG_1672149451651.jpg'),),
            title: const Text('Usama',style: TextStyle(fontSize: 30),),
            subtitle: Text('Today ${date.hour}:${date.minute}'),
          ),),
          ListView.builder(
            itemCount: 40,
            itemBuilder: (context, index) => ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/FB_IMG_1672149451651.jpg'),),
            title: const Text('Ahmad',style: TextStyle(fontSize: 30),),
            subtitle: Text('$date'),
            trailing: InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.teal,
                      content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.call),
                      Icon(Icons.video_call)
                    ],
                  )));
                },
                child: const Icon(Icons.call)),
          ),)
        ],
      ),
    ) );



   }
}