class Animal {
  String tutor;
  String nomeAnimal;
  TipoAnimal tipoAnimal;
  String raca;
  double volumeCaixa;
  Animal({required this.tutor,required this.volumeCaixa, required this.nomeAnimal, required this.tipoAnimal, required this.raca});
}

enum TipoAnimal {
  Cachorro,
  Gato,
}