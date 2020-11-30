//17.Crea un programa que calcule el factorial de un número. Haz una versión iterativa y otra recursiva.

import 'dart:io';

menu() {
  print('*' * 60);
  print('''
  Por favor seleccione una opción: 
  1- Versión Recursiva
  2- Versión Iterativa
  3- Salir
  ''');
  print('*' * 60);
  var linea = stdin.readLineSync();
  var opcion = int.parse(linea);
  return opcion;
}

//Versión Iterativa (Ejercicio 13)
factorialRecursiva() {
  print('Introduce un número a factorizar: ');
  var entradaFactorial = stdin.readLineSync();
  var nFactorizar = int.parse(entradaFactorial);

  var factorial = 1;
  for (int i = 1; i <= nFactorizar; i++) {
    factorial = factorial * i;
  }

  print('El factorial de $nFactorizar es: $factorial');
}

//Versión Recursiva
factorialIterativa() {
  /* print('Introduce un número a factorizar:');
  var entradaFactorial = stdin.readLineSync();
  var nFactorizar = int.parse(entradaFactorial);

  if (n == 0) {
    return 1;
  } else {
    return n * nFactorizar(n - 1);
  } */
}

void main() {
  var opcion = 0;
  do {
    opcion = menu();
    switch (opcion) {
      case 1:
        factorialRecursiva();
        break;
      case 2:
        factorialIterativa();
        break;
      case 3:
        break;
      default:
        print('Elige otra opción válida');
    }
  } while (opcion != 3);
}
