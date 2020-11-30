//6. Crea una lista estática y calcula la media aritmética de los valores.

void main(List<String> args) {
  var lista = [1, 100, 2, 200, 3, 300, -1, -100];

  var suma = 0;
  for (var valor in lista) {
    suma += valor;
  }
  print('La media es: ${suma / lista.length}');
}
