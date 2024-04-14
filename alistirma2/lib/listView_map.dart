import 'package:flutter/material.dart';

class ListViewMapKullanimi extends StatelessWidget {
   ListViewMapKullanimi({super.key});


  List<Ogrenciler> tumOgrenciler = List.generate(50000, (index) => Ogrenciler(index + 1, "Ogrenci isim ${index+1}", "Ogrenci soyisim ${index+1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Öğrenci Listesi"),backgroundColor: Colors.blue,),
      body: ListView(
        reverse: true,
        children: tumOgrenciler.map((Ogrenciler org) => Card(
          color: Colors.blue,
          child: ListTile(
            title: Text(org.isim,style: const TextStyle(fontWeight: FontWeight.bold ),),
            subtitle: Text(org.soyisim,style: const TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
            leading: CircleAvatar(child: Text(org.id.toString()),),
            textColor: Colors.white,
            
          ),
        )).toList(),
      ),
    );
  }


}

  class Ogrenciler{

    final id;
    final isim;
    final soyisim;

  Ogrenciler(this.id,this.isim,this.soyisim);

    
  }