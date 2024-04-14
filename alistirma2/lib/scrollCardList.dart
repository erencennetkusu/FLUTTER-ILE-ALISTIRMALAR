import 'package:flutter/material.dart';

void main() => runApp(const scrollCardList());

class scrollCardList extends StatelessWidget {
  const scrollCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Yazılım Güncesi Takipçileri',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                tekListeElemani("Bahar Ulu","B",Colors.purple),
                tekListeElemani("Sevgin Code Life","S",Colors.pink),
                tekListeElemani("Kodluyorum","K",Colors.black),
                tekListeElemani("Yigit İste","Y",Colors.amber),
                tekListeElemani("New Yazılımcı","N",Colors.orange),
                tekListeElemani("Mf Software","M",Colors.yellow),
                tekListeElemani("Cml Yazılım","C",Colors.blue.shade100),
                
              ],
            ),
            const  Center(
              child: Text("Yazilim Güncesi",style:TextStyle(fontSize: 30)),
            )
          ]),
        ),
      ),
    );
  }

  Column tekListeElemani(isim,logo,renk) {
    return  Column(children: [
      Card(
          color: Colors.blue,
          shadowColor: Colors.red,
          elevation: 12,
          child: ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading:  CircleAvatar(
              backgroundColor: renk,
              child:   Text(logo,style: const TextStyle(color: Colors.white,fontSize: 25, fontWeight:FontWeight.bold),),
            ),
            trailing: Icon(Icons.phone_android),
            title: Text(isim),
            subtitle: const Text("Sevgili Takipçilerim"),
          )),
    ]);
  }
}
