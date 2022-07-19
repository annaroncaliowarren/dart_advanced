void main() {

  SparklingWine garibaldi = SparklingWine();

  garibaldi.drink();
}

abstract class Wines {
  void drink();
}

class SparklingWine implements Wines {
  @override
  void drink() {
    print('Bebendo espumante, tim-tim!');
  }
}

class WhiteWine implements Wines {
  @override
  void drink() {
    print('Bebendo vinho branco, tim-tim!');
  }
}
