//13. Crea un programa que calcule el factorial de un número usando funciones recursivas.

import 'dart:io';

main() {
  print('Introduce un número a factorizar: ');
  var entradaFactorial = stdin.readLineSync();
  var nFactorizar = int.parse(entradaFactorial);
  var factorial = 1;

  for (int i = 1; i <= nFactorizar; i++) {
    factorial = factorial * i;
  }

  print('El factorial de $nFactorizar es: $factorial');
}
