//7. Modifica el programa anterior para que sea el usuario el que inserte los valores de la lista.

import 'dart:io';

void main(List<String> args) {
  List<int> lista = [];

  var entrada;
  int valor, total;

  do {
    stdout.write('Indica el número de valores a leer: ');
    entrada = stdin.readLineSync();
    total = int.parse(entrada);
  } while (total <= 0);

  for (var i = 0; i < total; i++) {
    stdout.write('Escribe un valor: ');
    entrada = stdin.readLineSync();
    valor = int.parse(entrada);
    lista.add(valor);
  }

  var suma = 0;
  for (var valor in lista) {
    suma += valor;
  }
  print('La media es: ${suma / lista.length}');
}
