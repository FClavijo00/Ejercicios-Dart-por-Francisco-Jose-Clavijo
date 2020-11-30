//4. Cuenta el número de ocurrencias de una palabra en un texto.

import 'dart:io';

void main(List<String> arguments) {
  print('Por favor, escribe una frase:');
  var frase = stdin.readLineSync();
  frase = frase.toLowerCase();
  var palabras = frase.split(' ');
  var repetidas = <String, int>{};
  for (var palabra in palabras) {
    if (repetidas[palabra] == null) {
      repetidas[palabra] = 1;
    } else {
      repetidas[palabra]++;
    }
  }
  print(repetidas);
}
