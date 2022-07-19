void main() {
  Computer<Positivo> computer = Computer(
    brand: 'Positivo',
    age: 10,
  );
  Office programOffice = Office();

  computer.openProgram(programOffice);

  // Toda lista tem generics, pois o Dart não sabe qual o tipo que vamos definir para a mesma
  List<String> names = ['Anna', 'Djonathan', 'João'];
  print(computer.firstValue(names));

  // Quando passamos um tipo para um dado genérico, o Dart tipa automaticamente esse objeto durante toda a execução

}

// Uma forma de criar uma classe genérica
class Computer<R> {
  String brand;
  int age;

  Computer({
    required this.brand,
    required this.age,
  });

  // parametro genérico, é diferente de dynamic, quando atribuir um valor para o generic ele tipa a variavel
  void openProgram<T>(T program) {
    print(program.toString());
  }

  // Nesse caso, não sabemos qual é o retorno, não sabemos qual o tipo da lista, então usamos generics.
  // E depois do nome do método, nós usamos generics para falar que esse método terá generics.
  T firstValue<T>(List<T> list) {
    return list[0];
  }
}

class Office {}

class Steam {}

class Positivo {}

class Apple {}
