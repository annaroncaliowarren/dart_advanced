void main() {
  Wines wine = Wines(
    name: 'Cabriz',
    year: '2016',
    typeWine: 'Rosé'
  );
}

class Wines {
  String name;
  String year;
  String typeWine;

  Wines({
    required this.name,
    required this.year,
    required this.typeWine
  });
}