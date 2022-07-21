void main() {
  Vodka absolut = Vodka();
  Juice orangeJuice = Juice();

  Drinks bebidas = Drinks();

  bebidas.isAlcohool(absolut);
  bebidas.isAlcohool(orangeJuice);
}

class Drinks {
  String? brand;

  void isAlcohool(Drink bebida) {
    bebida.isDrunk();
  }
}

abstract class Drink {
  void isDrunk();
}

class Vodka implements Drink {
  @override
  void isDrunk() {
    print('tem álcool');
  }
}

class Juice implements Drink {
  @override
  void isDrunk() {
    print('não tem álcool');
  }
}