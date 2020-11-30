//16. Crea un programa que convierta una cantidad en euros que se pide al usuario a bitcoins.
//Usa la clase Scanner de java para leer de la entrada estándar.

//Tendremos en cuenta que 1€ = 0,000062 Bitcoin a día 24 Nov. 2020

import 'dart:io';

main() {
  stdout.write('Escribe el valor de euros que deseas convertir a Bitcoin: ');
  var entradaEuros = stdin.readLineSync();
  var euros = double.parse(entradaEuros);
  var bitcoins = (euros * 0.000062);
  print('Usted ha gastado $euros € equivalente a $bitcoins Bitcoins');
}
