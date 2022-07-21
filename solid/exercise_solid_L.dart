void main() {
  Vodka absolut = Vodka();
  Drinks water = Drinks();

  void printIsAlcohool(Drinks objeto) {
    return objeto.isAlcohool();
  }

  printIsAlcohool(absolut);
  printIsAlcohool(water);
 
}

class Drinks {
  void isAlcohool() {
    print('não sei se essa bebida tem álcool');
  }
}

class Vodka extends Drinks {

  void isAlcohool() {
    print('essa bebida tem álcool');
  }

  void isDrunk() => true;
}
