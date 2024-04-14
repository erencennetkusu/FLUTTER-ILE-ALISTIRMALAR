import 'package:flutter/material.dart';

class DropdownKullanimi extends StatefulWidget {
  const DropdownKullanimi({super.key});

  @override
  State<DropdownKullanimi> createState() => _DropdownKullanimiState();
}

class _DropdownKullanimiState extends State<DropdownKullanimi> {
  List<String> _sehirler = ["Ankara","İstanbul","Şanlıurfa","Mersin","Gaziantep"];
  String? _secilen_sehir = null;

 final  Map<String, String>  _sehirMap = {
    "Ankara": "Ankara",
    "İstanbul": "İstanbul",
    "Şanlıurfa": "Şanlıurfa",
    "Mersin": "Mersin",
    "Gaziantep": "Gaziantep",
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: DropdownButton<String>(
          hint: const Text('Şehir Seçiniz'),
          items: _sehirler.map((String sh) {
            return DropdownMenuItem(
              child: Text(sh),
              value: _sehirMap[sh],
            );
          }).toList(),
          value: _secilen_sehir,
          onChanged: (String? yeni) {
            setState(() {
              _secilen_sehir = yeni;
              debugPrint('Seçilen Şehir $yeni');
            });
          },
        ),
      ),
    );
  }
}
