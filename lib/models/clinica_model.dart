import 'package:taxipet/models/animal_model.dart';

class Clinica {
  String clinica;
  String endereco;
  int cep;
  List<Animal> animais;
  bool isPetsVisible;
  Clinica({required this.clinica, required this.animais, required this.endereco, required this.cep, required this.isPetsVisible,});
}

