import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Red Page"),backgroundColor: Colors.red,),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
         const Text("Red Page",textAlign: TextAlign.center),
          ElevatedButton(onPressed: (){
            int? sayi = Random().nextInt(100);
            Navigator.of(context).maybePop(sayi);
            debugPrint("Kırmızı sayfadaki sayı : $sayi");
          }, child: const Text("Geri Dön"))
        ]),
      ),
    );
  }
}