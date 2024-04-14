import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatelessWidget {
  const TextFieldIslemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanicidan Veri Alma",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: Center(
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              // maxLength: 10,
              // keyboardType: TextInputType.number,
              decoration: const  InputDecoration(
                labelText: 'Email',
                hintText: 'Email Adresinizi Giriniz',
                suffixIcon: Icon(Icons.email),
                suffixIconColor: Colors.blue,
                border: OutlineInputBorder()
              ),
              onChanged: (deger){
                print(deger);
              },
              onSubmitted: (value) {
                print(value);
              },
            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              // maxLength: 10,
              // keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const  InputDecoration(
                labelText: 'Şifre',
                hintText: 'Şifrenizi Giriniz',
                suffixIcon: Icon(Icons.password),
                suffixIconColor: Colors.blue,
                border: OutlineInputBorder()
              ),
              onChanged: (deger2){
                print(deger2);
              },
              onSubmitted: (value2) {
                print(value2);
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: TextButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.verified_user),
            label: const Text('Giriş Yap',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              iconColor: Colors.white,
              shape: const RoundedRectangleBorder(
              side: BorderSide(
              color: Colors.blue, // Kenar çizgisinin rengi
               width: 2, // Kenar çizgisinin kalınlığı
              )),
            ),
            ),
          )
        ]),
      ),
    );
  }
}