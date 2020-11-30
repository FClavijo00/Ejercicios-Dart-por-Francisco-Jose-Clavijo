//9. El problema de Josefo es el siguiente: m personas están en un círculo,
//y son ejecutadas en orden contando cada n personas; el que queda solo al final es el sobreviviente.
//Por ejemplo, con m=12 y n=3, el sobreviviente es la persona 10.
//Crea un programa que dados m (el número de personas) y n (el salto) te diga que número de persona sobrevive.

import 'dart:io';

void main() {
  stdout.write('Escribe el numero de personas: ');
  var entradaPersonas = stdin.readLineSync();
  var num_personas = int.parse(entradaPersonas);
  stdout.write('Escribe el numero de salto: ');
  var entradaSalto = stdin.readLineSync();
  var salto = int.parse(entradaSalto);

  var personas = [];
  //Se inicializa la lista con los números que identifican a cada persona
  for (var i = 1; i <= num_personas; i++) {
    personas.add(i);
  }
  var contador = 0;
  print(personas);
  //Recorremos la lista de forma circular mientras queden más de una persona
  while (personas.length > 1) {
    //Nos quedamos con el resto para hacer un recorrido circular
    contador = (contador + salto) % personas.length;
    print('Persona eliminada ${personas[contador]}');
    //Eliminamos la persona de la lista
    personas.removeAt(contador);
    print('Personas que quedan vivas $personas');
  }
}
