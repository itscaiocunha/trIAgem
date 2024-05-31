import 'package:flutter/material.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFED701),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/backgroud.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              top: 300.0,
              left: 50.0,
              bottom: 50.0,
              child: Image.asset(
                'assets/images/logo_IA_azul.png',
                width: 207.0,
                height: 47.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            const Positioned(
              top: 580.0,
              left: 50.0,
              right: 50.0,
              child: Text(
                  'Cuide da sua saúde com a ajuda da inteligência artificial! Descubra o que podem ser seus sintomas em minutos, conversando com nossa assistente!',
                  style: TextStyle(fontSize: 17.0),
                  textAlign: TextAlign.justify),
            ),
            Positioned(
              bottom: 100.0,
              left: 0.0,
              right: 160.0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    backgroundColor: const Color.fromRGBO(58, 148, 209, 1.0),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 50.0,
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100.0,
              left: 170.0,
              right: 0.0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastro');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    backgroundColor: const Color.fromRGBO(147, 196, 230, 1.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 40.0),
                  ),
                  child: const Text(
                    'Cadastre-se',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(58, 148, 209, 1.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
