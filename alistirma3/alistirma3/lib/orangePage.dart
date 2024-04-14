import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orange Page"),backgroundColor: Colors.orange),
      body: Container(
        alignment: Alignment.center,
        child: Text("Orange Page",textAlign: TextAlign.center,),
      ),
    );
  }
}