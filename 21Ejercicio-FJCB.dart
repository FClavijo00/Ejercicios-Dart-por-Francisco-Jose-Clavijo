//21. Convertir una cadena a mayúsculas, minúsculas o capitalizada en función de
//la elección del usuario.

import 'dart:io';

mayusculas() {
  stdout.write('Introduce una cadena: ');
  var entradaCadena = stdin.readLineSync();
  print(entradaCadena.toUpperCase());
}

minusculas() {
  stdout.write('Introduce una cadena: ');
  var entradaCadena = stdin.readLineSync();
  print(entradaCadena.toLowerCase());
}

capitalizada() {
  stdout.write('Introduce una cadena: ');
  var entradaCadena = stdin.readLineSync();
  print(entradaCadena[0].toUpperCase() + entradaCadena.substring(1));
}

menu() {
  print('*' * 60);
  print('''
  Por favor seleccione una opción: 
  1- MAYÚSCULAS
  2- MINÚSCULAS
  3- CAPITALIZADA
  4- SALIR
  ''');
  print('*' * 60);
  var linea = stdin.readLineSync();
  var opcion = int.parse(linea);
  return opcion;
}

void main() {
  var opcion = 0;
  do {
    opcion = menu();
    switch (opcion) {
      case 1:
        mayusculas();
        break;
      case 2:
        minusculas();
        break;
      case 3:
        capitalizada();
        break;
      case 4:
        break;
      default:
        print('Elige otra opción válida');
    }
  } while (opcion != 4);
}
