
void main() {
  // NÃO NOMEADO pq não precisa passar o nome do atributo
  Constructors constructor = Constructors('Anna', 'Programar', 26);

  // NOMEADO com parametros opcionais
  Constructors constructor1 = Constructors.nomeadoOpcional(
    name: 'Anna',
    age: 26,
  );

  // NOMEADO com parametros requeridos
  Constructors constructor2 = Constructors.nomeadoRequerido(
    name: 'Anna',
    hobby: 'Programar',
    age: 26,
  );

  // HÍBRIDO
  Constructors constructor3 = Constructors.hibrido(
    'Anna',
    hobby: 'Programar',
    age: 26,
  );

  // HÍBRIDO com DEFAULT
  Constructors constructor4 = Constructors.hibridoComDefault(
    'Anna',
    age: 26,
  );
}

class Constructors {
  String? name;
  String? hobby;
  int? age;

  // Construtor NÃO NOMEADO
  Constructors(this.name, this.hobby, this.age);

  // Construtor NOMEADO COM PARAMETROS OPCIONAIS
  Constructors.nomeadoOpcional({
    this.name,
    this.hobby,
    this.age,
  });

  // Construtor NOMEADO COM PARAMETROS REQUERIDOS
  Constructors.nomeadoRequerido({
    required this.name,
    required this.hobby,
    required this.age,
  });

  // Construtor 'híbrido'
  Constructors.hibrido(
    this.name, {
    required this.hobby,
    required this.age,
  });

  // Construtor 'híbrido' com valor DEFAULT
  Constructors.hibridoComDefault(
    this.name, {
    this.hobby = 'programar',
    required this.age,
  });
}
