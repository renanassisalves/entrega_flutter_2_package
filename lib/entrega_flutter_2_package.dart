library entrega_flutter_2_package;

import 'dart:math';

import 'models/album.dart';

class GeradorAlbuns {
 // Gerar estilo musical
 static String _gerarEstilo() {
   var random = Random().nextInt(7);
   switch (random) {
     case 0:
       return "Rock";
     case 1:
       return "Pop";
     case 2:
       return "Sertanejo";
     case 3:
       return "Eletrônica";
     case 4:
       return "Jazz";
     case 5:
       return "Heavy Metal";
     case 6:
       return "K-Pop";
     default:
       return "Nova";
   }
  }

  static String _gerarCaracteristica() {
    var random = Random().nextInt(9);
    switch (random) {
      case 0:
        return "Calmo";
      case 1:
        return "Maluco";
      case 2:
        return "Fascinante";
      case 3:
        return "Melódico";
      case 4:
        return "Revolucionário";
      case 5:
        return "Mágico";
      case 6:
         return "Inovador";
      case 7:
        return "De Meditação";
      case 8:
        return "Fantástico";
      default:
        return "Questionável";
    }
  }

  static Album gerarAlbum(id) {
   return Album(
     id,
     "${_gerarEstilo()} ${_gerarCaracteristica()}",
     "",
      "https://picsum.photos/200"
   );
  }
}
