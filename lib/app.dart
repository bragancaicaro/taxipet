import 'package:flutter/material.dart';
import 'package:taxipet/ui/entry_point.dart';
import 'package:taxipet/models/menu_model.dart';
import 'package:taxipet/ui/pages/home/home_page.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'taxiPet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
          primaryColor: const Color(0xFF17203A),
          fontFamily: 'Noto',
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF17203A),
            secondary: Colors.blueAccent,
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
          ),
          useMaterial3: true,
        ),
        home: const EntryPoint(),
      );
}
}