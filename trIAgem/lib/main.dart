import 'package:flutter/material.dart';
import 'src/views/app/screens/initial.dart';
import 'src/views/splash/splash_pages.dart';
import 'src/views/app/screens/auth/login.dart';
import 'src/views/app/screens/auth/cadastro.dart';
import 'src/views/app/screens/home.dart';
import 'src/views/app/screens/auth/reset.dart';
import 'src/views/app/screens/auth/new_password.dart';
import 'src/views/app/screens/chat.dart';
import 'src/views/app/screens/identify.dart';
import 'src/views/app/screens/menu/perfil.dart';
import 'src/views/app/screens/menu/historico.dart';
import 'src/views/app/screens/auth/termo.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/initial': (context) => const Initial(),
        '/login': (contexto) => const Login(),
        '/cadastro': (context) => Cadastro(),
        '/home': (context) => const Home(),
        '/reset': (context) => const Reset(),
        '/newpass': (context) => const NewPassword(),
        '/chat': (context) => const ChatBot(),
        '/identify': (context) => const Identify(),
        '/perfil': (context) => const Perfil(),
        '/historico': (context) => const Historico(),
        '/termo': (context) => const TermoSeguranca()
      },
    ),
  );
}
