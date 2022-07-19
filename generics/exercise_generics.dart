void main() {
  Curso nomeCurso = Curso(info: 'Flutter e Dart');
  Curso duracaoCurso = Curso(info: '3 meses');
  Curso horasAulaCurso = Curso(info: 8);

  nomeCurso.printResult(nomeCurso.info);
  duracaoCurso.printResult(duracaoCurso.info);
  horasAulaCurso.printResult(horasAulaCurso.info);
}

class Curso<T> {
  T info;

  Curso({
    required this.info,
  });

  T printResult<T>(T info) {
    print('$info');
    return info;    
  }
}
