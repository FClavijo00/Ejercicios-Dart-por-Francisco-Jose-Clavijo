//19. Implementa una función que lea un número por teclado y comprueba que dicho
//número está entre 0 y 10 incluidos. Si se inserta otro número, se vuelve a pedir.

import 'dart:io';

main() {
  stdout.write('Escribe un número entre 0 y 10:');
  var entradaNum = stdin.readLineSync();
  var numero = int.parse(entradaNum);
  while (numero <= 0 || numero >= 10) {
    print('ERROR!. Pruebe otra vez:');
    entradaNum = stdin.readLineSync();
    numero = int.parse(entradaNum);
  }
  print('El número $numero está entre 0 y 10');
}
