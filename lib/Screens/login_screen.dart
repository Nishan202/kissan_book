import 'package:flutter/material.dart';
import 'package:kissan_book/Utils/asset_managements.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  List<Map<String, dynamic>> mData = [
    {
      "name" : "Raman",
      "msg" : "Hi!",
      "time" : "01 : 01 PM",
      "count" : 4,
      "image" : '${Assets.background_image}'
    },
    {
      "name" : "Raghav",
      "msg" : "Hi! Raghav here.",
      "time" : "10 : 01 PM",
      "count" : 0,
      "image" : '${Assets.calendar_icon}'
    },
    {
      "name" : "Rajiv",
      "msg" : "Hi! Rajiv here",
      "time" : "01 : 59 AM",
      "count" : 2,
      "image" : '${Assets.logo_name}'
    },
    {
      "name" : "Ruma",
      "msg" : "Hi! Ruma here",
      "time" : "01 : 01 PM",
      "count" : 1,
      "image" : '${Assets.logo_name}'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: mData.length, itemBuilder: (_, index){
        return ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('${mData[index]['image']}'),),
          title: Text('${mData[index]['name']}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
          subtitle: Text('${mData[index]['msg']}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
          trailing: Column(
            children: [
              Text('${mData[index]['time']}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
              mData[index]['count'] > 0 ? CircleAvatar(maxRadius: 11, backgroundColor: Colors.green, foregroundColor: Colors.white, child: Text('${mData[index]['count']}'),) : const SizedBox(),
            ],
          ),
        );
      }),
    );
  }
}