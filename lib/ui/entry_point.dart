import 'package:flutter/material.dart';
import 'package:taxipet/models/menu_model.dart';
import 'package:taxipet/ui/menu/menu_bottom_nav.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  late Widget activePage;
  @override
  void initState() {
    activePage = menuBottomNav[0].page;
    super.initState();
  }

  void _changeActivePage(Widget page) {
    setState(() {
      activePage = page;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      
      body: activePage,
      bottomNavigationBar: MenuBottomNav(onMenuSelected: _changeActivePage)
    );
  }
}