import 'package:flutter/material.dart';
import 'package:taxipet/models/clinica_model.dart';
import 'package:taxipet/models/menu_model.dart';
import 'package:taxipet/ui/pages/store/petstore_detail_page.dart';

class ClinicasRowWidget extends StatefulWidget {
  const ClinicasRowWidget({super.key, required this.clinicas});
  
  final List<Clinica> clinicas;
  @override
  State<ClinicasRowWidget> createState() => _ClinicasRowWidgetState();
}

class _ClinicasRowWidgetState extends State<ClinicasRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.clinicas.map((item) {
        return 
        
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(left:24, right:24, bottom: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Column(
            children: [
              Row(children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    item.clinica,
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                IconButton(onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StoreDetailPage(clinica: item)));
                  });
                }, icon: Icon(Icons.keyboard_arrow_right, color: Colors.white,  ))
              ]),
              Row(children: [
                          Padding(
                             padding:EdgeInsets.only(left:8, right:8, top: 16, bottom: 8), 
                             child: RichText(
                               text: TextSpan(children: [
                                 TextSpan(
                                   text: item.endereco, 
                                   style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),
                                 ),
                                 TextSpan(text: '   ',),
                                 TextSpan(
                                   text: 'CEP: ${item.cep.toString()}', 
                                   style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                 ),
                                 
                               ],
                                
                               ),
                              ),
                             ),
                         ],),
              
            ],
          ),
        );
      }).toList(),
    );
  }
}

