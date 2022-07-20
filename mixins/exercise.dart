void main() {
  Vodka smirnoff = Vodka();
  smirnoff.isDrunk();
}

class Drink {
  String? brand;
  String? category;
  bool? isAlcohool;

  void drinking() {
    print('Bebendo...');
  }

  void prep() {
    print('Preparando...');
  }
}

class Water extends Drink {}

class Whisky extends Drink with Drunk {}

class Vodka extends Drink with Drunk {}

mixin Drunk {
  void isDrunk() {
    print('Essa bebida tem álcool');
  }
}