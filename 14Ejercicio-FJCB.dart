//14. Crea un programa que genere 100 números aleatorios pero no se permiten repetidos.

import 'dart:math';

bool buscar(lista, x) {
  for (var y in lista) {
    if (x == y) return true;
  }
  return false;
}

void main(List<String> args) {
  var numeros = [];
  while (numeros.length < 100) {
    var numero = Random().nextInt(100);
    var encontrado = buscar(numeros, numero);
    if (!encontrado) {
      numeros.add(numero);
    }
  }
  print(numeros);
}
