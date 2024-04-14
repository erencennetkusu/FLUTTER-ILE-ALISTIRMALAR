import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yellow Page"),backgroundColor: Colors.yellow,),
      body: Container(
        alignment: Alignment.center,
        child: Text("Yellow Page",textAlign: TextAlign.center,),
      ),
    );
  }
}