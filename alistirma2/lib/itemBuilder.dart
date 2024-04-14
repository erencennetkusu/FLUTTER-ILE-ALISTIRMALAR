import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class itemBuilderKullanimi extends StatelessWidget {
  itemBuilderKullanimi({super.key});
  List<Ogrenciler> tumOgrenciler = List.generate(
      50000,
      (index) => Ogrenciler(index + 1, "Ogrenci isim ${index + 1}",
          "Ogrenci soyisim ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("List View İtem Builder Kullanimi"),
          backgroundColor: Colors.blue),
      backgroundColor: Colors.blue,
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Card(
              color: Colors.blue,
              child: ListTile(
                onTap: () => {
                  // EasyLoading.showToast("Tıklandı !",toastPosition: EasyLoadingToastPosition.bottom)
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Sistem!!!"),
                          content: Text(tumOgrenciler[index].isim),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Diyaloğu kapat
                              },
                              child: Text('Kapat'),
                            ),
                          ],
                        );
                      }),
                },
                title: Text(
                  tumOgrenciler[index].isim,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  tumOgrenciler[index].soyisim,
                  style: const TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  child: Text(tumOgrenciler[index].id.toString()),
                ),
                textColor: Colors.white,
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, int index) {
          int yeniIndex = index + 1;
          if (yeniIndex % 4 == 0) {
            return const Divider(
              color: Colors.amber,
              thickness: 5,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}

class Ogrenciler {
  final id;
  final isim;
  final soyisim;

  Ogrenciler(this.id, this.isim, this.soyisim);
}
