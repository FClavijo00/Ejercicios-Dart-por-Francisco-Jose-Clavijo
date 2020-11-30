//5. Crea una aplicación en Dart que genere un número aleatorio entre 0 y 99.
//El jugador debe adivinarlo introduciendolo en la entrada estándar sus tentativas.
//El sistema informará al usuario si el número introducido es menor o mayor.
//El programa finaliza cuando el usuario acierta el número. Se informará del número de tentativas.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var aleatorio = Random();
  var secreto = 0;
  var tentativa = 0;
  secreto = aleatorio.nextInt(99);
  do {
    stdout.write('Adivina el número secreto: ');
    var cadena = stdin.readLineSync();
    tentativa = int.parse(cadena);
    if (tentativa > secreto) {
      print('Menor');
    } else {
      print('Mayor');
    }
  } while (tentativa != secreto);
  print('¡¡¡HAS ACERTADO!!!. EL NÚMERO SECRETO ES: $secreto');
}
