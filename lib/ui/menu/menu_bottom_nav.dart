import 'package:flutter/material.dart';
import 'package:taxipet/ui/pages/home/home_page.dart';
import 'package:taxipet/models/menu_model.dart';
class MenuBottomNav extends StatefulWidget {
  final Function(Widget) onMenuSelected;
  
  const MenuBottomNav({super.key, required this.onMenuSelected});

  @override
  State<MenuBottomNav> createState() => _MenuBottomNavState();
}

class _MenuBottomNavState extends State<MenuBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:12, right:12, top:12, bottom:24),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        ...menuBottomNav.map((menu) => _buildMenuItem(menu)),
      ],),
    );
  }


  Widget _buildMenuItem(Menu menu) {
    return Stack(
      children: [

        menu.isActive
            ? AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                height: 5,
                width: 24,
                top: 1,
                left: 14,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              )
            : const SizedBox(),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: menu.isActive ? 1 : 0.5,
              child: IconButton(
              onPressed: () {
                menu.toggleActiveStatus();
                widget.onMenuSelected(menu.page);
              },
              icon: menu.icon,
                        
                      ),
            ),
      ],
    );
  }
}