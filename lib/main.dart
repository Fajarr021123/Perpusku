import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'login.dart';
import 'home.dart';
import 'detail_buku.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perpusku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/detail1': (context) => DetailProdukScreen1(),
        '/detail2': (context) => DetailProdukScreen2(),
        '/detail3': (context) => DetailProdukScreen3(),
        '/detail4': (context) => DetailProdukScreen4(),
      },
    );
  }
}
