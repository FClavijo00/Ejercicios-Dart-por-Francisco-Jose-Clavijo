//2. Crea una aplicación que compruebe si una palabra tiene o no letras repetidas.

import 'dart:io';

void main() {
  print('Por favor, escribe palabras: ');
  var frase = stdin.readLineSync();
  var mapaLetras = <String, int>{};
  var letra = '';
  for (var i = 0; i < frase.length; i++) {
    letra = frase[i];
    if (mapaLetras[letra] == null) {
      mapaLetras[letra] = 1;
    } else {
      mapaLetras[letra]++;
    }
    print(mapaLetras); //Dentro del bucle for lo hace paso a paso
  }
  print(mapaLetras); //Fuera del bucle for lo hace todo junto
}
