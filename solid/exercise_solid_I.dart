void main() {}

abstract class Drinks {
  void drinking() {
    print('bebendo...');
  }
}

abstract class DrinksWithAlcohool extends Drinks {
  void isDrunk() {
    print('Bebida com álcool, cuidado');
  }
}

class Vodka implements DrinksWithAlcohool {
  @override
  void drinking() {
    print('bebendo...');
  }

  @override
  void isDrunk() {
    print('Bebida com álcool, cuidado');
  }
}

class Juice implements Drinks {
  @override
  void drinking() {
    print('bebendo...');
  }
}
