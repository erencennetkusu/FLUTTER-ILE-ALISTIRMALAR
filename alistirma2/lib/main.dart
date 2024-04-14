import 'package:alistirma2/avatar.dart';
import 'package:alistirma2/buttonWidget.dart';
import 'package:alistirma2/counter_widget.dart';
import 'package:alistirma2/dropdownButton.dart';
import 'package:alistirma2/imageWidget.dart';
import 'package:alistirma2/itemBuilder.dart';
import 'package:alistirma2/kullanici_veri_alma.dart';
import 'package:alistirma2/listView_map.dart';
import 'package:alistirma2/scrollCardList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TextFieldIslemleri(),
      builder:EasyLoading.init(),
    );
  }
}


