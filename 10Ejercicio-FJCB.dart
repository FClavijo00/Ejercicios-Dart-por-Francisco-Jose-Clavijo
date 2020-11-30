//10. Implementa un programa que convierta la temperatura expresada en grados centígrados (C)
//a Fahrenheit (F) y viceversa sabiendo que:
//F = 1.8C + 32
//C = (F - 32) / 1.8

import 'dart:io';

/*
* Lo hago con menú de venganza por el examen de programación del año pasado del
* primer trimestre que no supe hacerlo y suspendí (y porque queda guapo).
*/

menu() {
  print('*' * 60);
  print('''
  Por favor seleccione una opción: 
  1- De Grados Centígrados (ºC) a Grados Fahrenheit (ºF)
  2- De Grados Fahrenheit (ºF) a Grados Centígrados (ºC)
  3- Salir
  ''');
  print('*' * 60);
  var linea = stdin.readLineSync();
  var opcion = int.parse(linea);
  return opcion;
}

centigradosToFahrenheit() {
  stdout.write('Escribe el numero de grados centígrados que desea convertir: ');
  var entradaCentigrados = stdin.readLineSync();
  var gradosCentigrados = double.parse(entradaCentigrados);
  var gradosFahrenheit = ((1.8 * gradosCentigrados) + 32);
  print('$gradosCentigrados ºC es igual a $gradosFahrenheit ºF');
}

fahrenheitToCentigrados() {
  stdout.write('Escribe el numero de grados fahrenheit que desea convertir: ');
  var entradaFahrenheit = stdin.readLineSync();
  var gradosFahrenheit = double.parse(entradaFahrenheit);
  var gradosCentigrados = ((gradosFahrenheit - 32) / 1.8);
  print('$gradosFahrenheit ºF es igual a $gradosCentigrados ºC');
}

main() {
  var opcion = 0;
  do {
    opcion = menu();
    switch (opcion) {
      case 1:
        centigradosToFahrenheit();
        break;
      case 2:
        fahrenheitToCentigrados();
        break;
      case 3:
        break;
      default:
        print('Elige otra opción válida');
    }
  } while (opcion != 3);
}
