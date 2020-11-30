//11. Crea un programa para calcular el valor de PI usando la siguiente serie de Leibniz.
//Es una serie infinita. Como es lógico no podemos hacer un programa que calcule la serie
//infinita pero si podemos intuir que cuantos más sumandos calculemos mayor será la precisión del cálculo del valor de PI.

import 'dart:math';

double aproximacionPi(limite) {
  var suma = 0.0;
  for (var i = 1; i <= limite; i++) {
    suma += pow(-1, i + 1) * 1 / ((i * 2) - 1);
  }
  return suma * 4;
}

void main() {
  print(aproximacionPi(100000000));
}
