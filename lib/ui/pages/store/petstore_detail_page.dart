import 'package:flutter/material.dart';
import 'package:taxipet/models/clinica_model.dart';
import 'package:taxipet/models/animal_model.dart';
import 'package:taxipet/ui/pages/store/widget/petstore_row_widget.dart';
import 'package:taxipet/ui/widget/custom_button.dart';
import 'package:taxipet/ui/widget/custom_snackbar.dart';


class StoreDetailPage extends StatefulWidget {
  const StoreDetailPage({super.key, required this.clinica});
  final Clinica clinica;

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  final double volumeMaximo = 20.0;
  double volumeDisponivel = 20.0;
  Map<String, double> petsNoTaxi = {};
  
  @override
  void initState() {
    super.initState();
    
  }
  bool adicionarPet(Animal animal) {
    if (animal.volumeCaixa <= volumeDisponivel) {
      petsNoTaxi[animal.nomeAnimal] = animal.volumeCaixa;
      volumeDisponivel -= animal.volumeCaixa;
      print('Pet ${animal.nomeAnimal} adicionado. Volume disponível: $volumeDisponivel');
      return true; // Pet adicionado com sucesso
    } else {
      print('Volume insuficiente para adicionar ${animal.nomeAnimal}. Volume disponível: $volumeDisponivel');
      return false; // Volume insuficiente
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top:18, left:8),
              child: Row(children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.keyboard_arrow_left, color: Colors.black, size: 36,)),
                Text('Clínica', style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),),
                Spacer(),
              ],),
            ),
            
            Container(
              margin: EdgeInsets.all(24),
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ 
                    Text(widget.clinica.clinica, style: TextStyle(color:Colors.white, fontSize: 22, fontWeight:FontWeight.bold),),
                  ]
                ),
                SizedBox(height: 10,),
                Row(children: [
                    Text(
                      widget.clinica.endereco,
                      style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.w400),
                    )
                ],),
                Row(children: [
                    Text(
                      'CEP: ${widget.clinica.cep.toString()}',
                      style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),
                    )
                ],),
                Row(children: [
                    Text(
                      'Volume disponível: ${volumeDisponivel.toStringAsFixed(2)}',
                      style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),
                    )
                ],),
                SizedBox(height: 16,),
                CustomButton(text: 'Fechar Viagem'),
                SizedBox(height: 16,),
                Column(children: widget.clinica.animais.map((animal) {
                  return Container(
                    padding: EdgeInsets.only(top:8, left:16, bottom: 8),
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:'Pet: ',
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.w300),),
                                TextSpan(
                                  text:animal.nomeAnimal,
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),),
                              ]),
                            ),
                          ],),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:'Tutor: ',
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.w300),),
                                TextSpan(
                                  text:animal.tutor,
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),),
                              ]),
                            ),
                          ],),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:'Tipo: ',
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.w300),),
                                TextSpan(
                                  text:animal.tipoAnimal.name,
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),),
                              ]),
                            ),
                          ],),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:'Raça: ',
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.w300),),
                                TextSpan(
                                  text:animal.raca,
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),),
                              ]),
                            ),
                          ],),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:'Caixa de transporte: ',
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.w300),),
                                TextSpan(
                                  text: '${animal.volumeCaixa.toString()}m',
                                  style: TextStyle(color:Colors.white, fontSize: 16, fontWeight:FontWeight.bold),
                                ),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(1, -8), // Posiciona o número elevado
                                    child: Text(
                                      '2',
                                      textScaleFactor: 0.7, // Escala o tamanho do número elevado
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],)
                        ],),
                        Spacer(),
                        IconButton(onPressed: (){
                          if(adicionarPet(animal)){
                            CustomSnackbar.showWithAction(context, 'Adicionado', Colors.blueAccent, SnackBarAction(label: 'Ok', onPressed: (){}));
                          } else {
                            CustomSnackbar.showWithAction(context, 'Não é possível adicionar mais pets', Colors.blueAccent, SnackBarAction(label: 'Ok', onPressed: (){}));
                          }
                          widget.clinica.animais.remove(animal);
                          setState(() {
                            
                          });
                        }, icon: Icon(Icons.add, color: Colors.white,))
                    ],),
                  );
                }).toList(),)
              ],),
            )            
          ],),
        )
      ),
    );
  }


  
}
