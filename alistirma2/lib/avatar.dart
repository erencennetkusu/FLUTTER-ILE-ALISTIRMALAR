import 'package:flutter/material.dart';
class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: 
      Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50,
              child: Text('S',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ),
          ),
            Container(
            margin: const EdgeInsets.all(15),
            child: const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50,
              child: Text('E',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ),
          ),
            Container(
            margin: const EdgeInsets.all(15),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 50,
              child: Text('H',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ),
            
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: const CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 50,
              child: Text('A',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ),
            
          )
      ]),
    );
  }
}