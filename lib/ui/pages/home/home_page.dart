import 'package:flutter/material.dart';
import 'package:taxipet/models/menu_model.dart';
import 'package:taxipet/ui/menu/menu_bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        
        actions: [
          Padding(padding:EdgeInsets.only(left:24, top:8), child: Text('Início', style: TextStyle(fontSize:18, color: Colors.white, fontWeight: FontWeight.w200),)),
          Spacer(),
          Padding(padding: EdgeInsets.only(right:24), child: Text('taxiPet', style: TextStyle(fontSize:22, color: Colors.white, fontWeight: FontWeight.w200),)),
        ],
        
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Text('home')
      ),
    );
  }


}
