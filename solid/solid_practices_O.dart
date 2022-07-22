void main() {
  ComputerPositivo computerPositivo = ComputerPositivo();
  UsarComputer usarComputador = UsarComputer(computerPositivo);

  usarComputador.mostrarLogo();
}

abstract class ComputerI {
  void mostrarLoginAoLigar();
}

class ComputerPositivo implements ComputerI {
  @override
  void mostrarLoginAoLigar() {
    print('Logo da Positivo');
  }
}

class ComputerLenovo implements ComputerI {
  @override
  Future<void> mostrarLoginAoLigar() async {
    print('Logo da Lenovo');
  }
}

class ComputerApple implements ComputerI {
  @override
  void mostrarLoginAoLigar() {
    print('Logo da Apple');
  }
}

class UsarComputer {
  final ComputerI computerI;
  UsarComputer(this.computerI);

  void mostrarLogo() {
    computerI.mostrarLoginAoLigar();
  }
}