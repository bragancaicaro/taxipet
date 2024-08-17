import 'package:flutter/material.dart';
import 'package:taxipet/models/clinica_model.dart';
import 'package:taxipet/models/animal_model.dart';
import 'package:taxipet/ui/pages/store/widget/petstore_row_widget.dart';


class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<Clinica> clinicasList = [
  Clinica(
    clinica: 'PetHome', 
    endereco: 'Rua 1, N. 100 - Nossa Sra.',
    cep: 32100000,
    animais: [
      Animal(tutor: 'Carlos M.', nomeAnimal: 'Max', tipoAnimal: TipoAnimal.Cachorro, raca: 'Labrador', volumeCaixa: 1.5),
      Animal(tutor: 'Fernanda L.', nomeAnimal: 'Mia', tipoAnimal: TipoAnimal.Gato, raca: 'Siamês', volumeCaixa: 1.2),
      Animal(tutor: 'João P.', nomeAnimal: 'Rex', tipoAnimal: TipoAnimal.Cachorro, raca: 'Pastor Alemão', volumeCaixa: 2.8),
      Animal(tutor: 'Paula C.', nomeAnimal: 'Luna', tipoAnimal: TipoAnimal.Gato, raca: 'Persa', volumeCaixa: 1.5),
      Animal(tutor: 'Marcos S.', nomeAnimal: 'Thor', tipoAnimal: TipoAnimal.Cachorro, raca: 'Husky Siberiano', volumeCaixa: 2.3),
      Animal(tutor: 'Julia N.', nomeAnimal: 'Nina', tipoAnimal: TipoAnimal.Gato, raca: 'Maine Coon', volumeCaixa: 2.1),
      Animal(tutor: 'Ricardo R.', nomeAnimal: 'Buddy', tipoAnimal: TipoAnimal.Cachorro, raca: 'Golden Retriever', volumeCaixa: 1.9),
      Animal(tutor: 'Sabrina F.', nomeAnimal: 'Tom', tipoAnimal: TipoAnimal.Gato, raca: 'Bengal', volumeCaixa: 1.4),
    ],
    isPetsVisible: false,
  ),
  Clinica(
    clinica: 'Casa dos pets', 
    endereco: 'Rua 2, N. 200 - Centro',
    cep: 32200000,
    animais: [
      Animal(tutor: 'Carlos M.', nomeAnimal: 'Max', tipoAnimal: TipoAnimal.Cachorro, raca: 'Labrador', volumeCaixa: 3.1),
      Animal(tutor: 'Fernanda L.', nomeAnimal: 'Mia', tipoAnimal: TipoAnimal.Gato, raca: 'Siamês', volumeCaixa: 1.2),
      Animal(tutor: 'João P.', nomeAnimal: 'Rex', tipoAnimal: TipoAnimal.Cachorro, raca: 'Pastor Alemão', volumeCaixa: 2.0),
      Animal(tutor: 'Paula C.', nomeAnimal: 'Luna', tipoAnimal: TipoAnimal.Gato, raca: 'Persa', volumeCaixa: 1.5),
      Animal(tutor: 'Marcos S.', nomeAnimal: 'Thor', tipoAnimal: TipoAnimal.Cachorro, raca: 'Husky Siberiano', volumeCaixa: 3.8),

    ],
    isPetsVisible: false,
  ),
  Clinica(
    clinica: 'Meu bichinho', 
    endereco: 'Rua 3, N. 300 - Cabral',
    cep: 32300000,
    animais: [
      Animal(tutor: 'Carlos M.', nomeAnimal: 'Max', tipoAnimal: TipoAnimal.Cachorro, raca: 'Labrador', volumeCaixa: 2.2),
      Animal(tutor: 'Fernanda L.', nomeAnimal: 'Mia', tipoAnimal: TipoAnimal.Gato, raca: 'Siamês', volumeCaixa: 1.2),
      Animal(tutor: 'João P.', nomeAnimal: 'Rex', tipoAnimal: TipoAnimal.Cachorro, raca: 'Pastor Alemão', volumeCaixa: 2.5),
      Animal(tutor: 'Paula C.', nomeAnimal: 'Luna', tipoAnimal: TipoAnimal.Gato, raca: 'Persa', volumeCaixa: 1.5),
      Animal(tutor: 'Marcos S.', nomeAnimal: 'Thor', tipoAnimal: TipoAnimal.Cachorro, raca: 'Husky Siberiano', volumeCaixa: 2.9),
    ],
    isPetsVisible: false,
  )
];
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Row(children: [
              Padding(padding:EdgeInsets.all(24),child: Text('Clínicas', style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),)),
              Spacer(),
              
            ],),
            ClinicasRowWidget(clinicas: clinicasList),
            
          ],),
        )
      ),
    );
  }


  
}
