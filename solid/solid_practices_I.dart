void main() {
  Bike bike = Bike();
  Caminhao caminhao = Caminhao();
  Moto moto = Moto();
}

abstract class VeiculoI {
  void andar();
}

abstract class VeiculosQueCorrem extends VeiculoI {
  void correr();
}

abstract class VeiculoCargaI extends VeiculoI {
  void carregarCargaPesada();
}

class Bike implements VeiculoI {
  @override
  void andar() {}
}

class Caminhao implements VeiculoCargaI {
  @override
  void andar() {}

  @override
  void carregarCargaPesada() {}
}

class Moto implements VeiculosQueCorrem {
  @override
  void andar() {}

  @override
  void correr() {}
}
