void main() {
  // se a classe for nula coloca um valor default
  Animal? animal;
  print(animal?.name ?? 'Desconhecido');
}

class Animal {
  // atributos
  String? name;
  int? age;
  double? weight;

  // forma de construtor mais simples
  Animal(this.name, this.age, this.weight);
  
  // métodos
  void run() {
    // validação de nulos => uma forma
    if (age != null && weight != null) {
      double result = age! * weight!;
    }

    // outra forma
    String newString = name ?? 'desconhecido';
    double result = (age ?? 1) * (weight ?? 1);

    print('Correndo...');
  }

  void scream() {
    print('Gritando...');
  }

  // estado atual => muitas vezes já é um atributo

}
