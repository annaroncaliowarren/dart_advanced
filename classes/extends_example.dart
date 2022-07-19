void main() {
  SparklingWine garibaldi = SparklingWine();

  garibaldi.drink();
}

class Wines {
  void drink() {
    print('Bebendo vinho...');
  }
}

class SparklingWine extends Wines {}

class WhiteWine extends Wines {}
