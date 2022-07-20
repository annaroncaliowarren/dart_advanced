void main() {
  Ailton ailton = Ailton();
  ailton.program();
  ailton.noSleep();
}

class Person {
  String? name;
  String? cpf;
  int? idade;

  void comer() => print('Comendo...');

  void dancar() => print('Dancando...');

  void beber() => print('Bebendo...');

  void dormir() => print('Dormindo...');
}

class Pedrinho extends Person {}

class Maria extends Person {}

class Ailton extends Person with Code, NoSleep {}

class Carlos extends Person with Code, NoSleep {}

class Julia extends Person with Code {}

mixin Code {
  void program() {
    print('Programando...');
  }
}

mixin NoSleep {
  void noSleep() {
    print('Sempre acordado');
  }
}
