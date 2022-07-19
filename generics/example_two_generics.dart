
void main() {
  MinhaClasse<int> inteiro = MinhaClasse(19);
  MinhaClasse<String> textinho = MinhaClasse('Anna');

  inteiro.imprimir();
  textinho.imprimir();

}

class MinhaClasse<T> {
  T objeto;
  MinhaClasse(this.objeto);

  void imprimir() {
    print('$objeto - ${objeto.runtimeType}');
  }
}