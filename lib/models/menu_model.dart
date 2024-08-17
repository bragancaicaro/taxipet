import 'package:flutter/material.dart';
import 'package:taxipet/ui/pages/account/account_page.dart';
import 'package:taxipet/ui/pages/home/home_page.dart';
import 'package:taxipet/ui/pages/store/petstore_page.dart';

class Menu{
  Icon icon;
  final Widget page;
  bool isActive;
  Menu({required this.icon, required this.page, required this.isActive});
  void toggleActiveStatus() {
    for(var menu in menuBottomNav){
      menu.isActive = false;
    }
    isActive = !isActive;
    
  }
}

List<Menu> menuBottomNav = [
  Menu(page: HomePage(), icon: const Icon(Icons.home_outlined, size: 36, color:Colors.white70,), isActive: true),
  Menu(page: StorePage(), icon: const Icon(Icons.store_outlined, size: 36, color:Colors.white70,), isActive: false),
  Menu(page: AccountPage(), icon: const Icon(Icons.explore_outlined, size: 36, color:Colors.white70,), isActive: false),
  Menu(page: AccountPage(), icon: const Icon(Icons.person_outline, size: 36, color:Colors.white70,), isActive: false),
];