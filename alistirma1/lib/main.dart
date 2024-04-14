import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Row dartRowOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 70,
          color: Colors.blue.shade100,
          child: const Text("D",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 70,
          color: Colors.blue.shade200,
          child: const Text("A",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 70,
          color: Colors.blue.shade300,
          child: const Text("R",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 70,
          color: Colors.blue.shade400,
          child: const Text("T",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade200,
          child: Text("E",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade300,
          child: Text("R",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade400,
          child: Text("S",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade500,
          child: Text("L",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade600,
          child: Text("E",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade600,
          child: Text("R",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          width: 70,
          height: 70,
          color: Colors.blue.shade600,
          child: Text("İ",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        )),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dartRowOlustur(),
                Expanded(child: dersleriColumnOlustur())
              ]),
        ),
      ),
    );
  }

  Widget appContainer() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.orange,
            border: Border.all(width: 10, color: Colors.purple),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(10, 10), blurRadius: 5),
              BoxShadow(
                  color: Colors.green, offset: Offset(-10, 10), blurRadius: 5),
            ]),
        child: const Text(
          "Yazılım Güncesi",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
