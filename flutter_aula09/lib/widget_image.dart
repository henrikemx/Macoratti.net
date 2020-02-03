  import 'package:flutter/material.dart';

widgetImage() {
    return Center(
      child: Image.network(
        'https://s2.glbimg.com/cYa3pKAKIPidjKyGPuAd8T4Hd1I=/e.glbimg.com/og/ed/f/original/2017/08/21/dog-2570398_960_720.jpg')
        );
  }
  */

  /*
  widgetImage() {
    return Image.network('https://mfacdn.cachefly.net/chooseveg/sites/4/2019/03/WorldVeganDayCover-3-1200x570.jpg');
  }
  */

  /*
  widgetImage() {
    return Center(
      child: 
      Image.asset('assets/imagens/dog(1).jpg',
      // height: 300,
      // width: 300,
      // fit: BoxFit.fitHeight, // imagem quadrada
      // fit: BoxFit.contain // imagem inalterada
      // fit: BoxFit.cover // corta imagem
      // fit: BoxFit.fill, // achata lateralmente
      // fit: BoxFit.fitHeight // corta as laterais
      // fit: BoxFit.fitWidth, // corta na parte sup/inf
      ),);
  }
  */

  widgetImage() {
    return SizedBox.expand(
      // centralizou imagem
      child: Image.asset(
        'assets/imagens/dog(1).jpg',
        height: 300,
        width: 300,
        // fit: BoxFit.fitHeight, // expande a imagem
        // fit: BoxFit.contain // imagem inalterada
        // fit: BoxFit.cover // expande imagem
        // fit: BoxFit.fill, // achata lateralmente
        // fit: BoxFit.fitHeight // expande e corta as laterais
        // fit: BoxFit.fitWidth, // corta na parte sup/inf
      ),
    );
  }
