import 'package:flutter/material.dart';
import 'package:login_raro/criar_page.dart';
import 'package:login_raro/home_page.dart';
import 'package:login_raro/login_page.dart';
import 'package:login_raro/recuperar_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.blue),
    initialRoute: "/Login",
    routes: {
      "/Login": (context) => LoginPage(),
      "/Home": (context) => HomePage(),
      "/Criar": (context) => CriarPage(),
      "/Recuperar": (context) => RecuperarPage(),
    },
  ));
}
