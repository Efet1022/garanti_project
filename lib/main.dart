import 'package:flutter/material.dart';
import 'package:garanti_project/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Uygulamanın arsası
      debugShowCheckedModeBanner:
          false, //debug yazısını iptal ettim
      home:
          Loginpage(), //giriş sayfasını çağırdım
    );
  }
}
