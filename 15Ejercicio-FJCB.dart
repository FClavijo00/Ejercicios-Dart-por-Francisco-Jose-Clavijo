//15. Implementa un programa que imprima en consola los primeros 100 números primos.
//Recuerda que un número primo es aquel que sólo es divisible por 1 y él mismo.

bool esPrimo(int numero) {
  for (var contador = 2; contador < numero / 2 + 1; contador++) {
    if (numero % contador == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  var primos = [];
  var i = 2;
  do {
    if (esPrimo(i)) {
      primos.add(i);
    }
    i++;
  } while (primos.length < 100);
  print(primos);
}
