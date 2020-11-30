//12. Implementa el juego de piedra papel o tijera. Usa las siguientes funciones:
// - getPlayerMove()
// - getComputerMove()
// - whoWon()
// - main()

import 'dart:io';
import 'dart:math';

var piedra;
var papel;
var tijera;
var eleccionJugador;
var eleccionComputer;
var manoJugador;

void main() {
  print('Escribe tu mano: ¿piedra, papel o tijera?');
  manoJugador = stdin.readLineSync();
  whoWon();
}

void getPlayerMove() {
  switch (manoJugador) {
    case 'piedra':
      eleccionJugador = piedra;
      break;
    case 'papel':
      eleccionJugador = papel;
      break;
    case 'tijera':
      eleccionJugador = tijera;
      break;
    default:
      print('Elije solo una de las opciones dadas');
  }
}

void getComputerMove() {
  Random random = new Random();
  int manoComputer = random.nextInt(3);
  switch (manoComputer) {
    case 0:
      eleccionComputer = piedra;
      break;
    case 1:
      eleccionComputer = papel;
      break;
    case 2:
      eleccionComputer = tijera;
      break;
  }
}

void whoWon() {
  switch (eleccionComputer) {
    case 1:
      switch (eleccionJugador) {
        case 'piedra':
          print("Empate");
          break;
        case 'papel':
          print("Has ganado! Let's go!");
          break;
        case 'tijera':
          print("Has perdido! Nice try!");
          break;
      }
      break;
    case 2:
      switch (eleccionJugador) {
        case 'pidra':
          print("Has perdido! Nice try!");
          break;
        case 'papel':
          print("Empate");
          break;
        case 'tijera':
          print("Has ganado! Let's go!");
          break;
      }
      break;
    case 3:
      switch (eleccionJugador) {
        case 'piedra':
          print("Has ganado! Let's go!");
          break;
        case 'papel':
          print("Has perdido! Nice try!");
          break;
        case 'tijera':
          print("Empate");
          break;
      }
      break;
  }
}
