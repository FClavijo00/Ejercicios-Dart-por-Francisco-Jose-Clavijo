//8. Crea un programa que genere una lista aleatoria de 50 elementos.
//Posteriormente se creará una lista nueva que contenga solo aquellos valores mayores que uno dado por el usuario.

import 'dart:io';
import 'dart:math';

int leerNumeroTeclado() {
  stdout.write('Escribe el filtro: ');
  var entrada = stdin.readLineSync();
  var filtro = int.parse(entrada);
  return filtro;
}

List<int> generaLista() {
  List<int> lista = [];
  for (var i = 0; i < 50; i++) {
    lista.add(Random().nextInt(99));
  }
  return lista;
}

void imprimeLista(lista) {
  lista.forEach((e) {
    print(e);
  });
}

void main(List<String> args) {
  var lista = generaLista();
  var filtro = leerNumeroTeclado();
  var listaMayores = [];
  lista.forEach((e) => {if (e > filtro) listaMayores.add(e)});
  imprimeLista(listaMayores);
  print('Han quedado ${listaMayores.length} elementos');
}
