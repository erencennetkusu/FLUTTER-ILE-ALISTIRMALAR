import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,        
        children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration:  BoxDecoration(
                    border: Border.all(width: 5,color: Colors.red),
                  ),
                  child: Image.network(
                    "https://cdn.cetas.com.tr/Delivery/Public/Image/-1x-1/HANGI_ARABA_HANGI_ULKE_02_sp5zy3n1im.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration:  BoxDecoration(
                    border: Border.all(width: 5,color: Colors.red)
                  ),
                    child: Image.asset(
                  "assets/images/220750.jpg",
                  fit: BoxFit.cover,
                )),
              ),
            ],
          ),
        ),
        FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif', image: 'https://img.tamindir.com/2023/03/253503/sifir-araba-tedarik-sorunu-1.jpg')
      ]),
    );
  }
}
