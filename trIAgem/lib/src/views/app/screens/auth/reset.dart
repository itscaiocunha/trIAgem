import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
              top: 500,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/backgroud2.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -530,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/menu002.png',
                width: 300,
                height: 1171,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              top: 60,
              left: 83,
              right: 83,
              child: Container(
                width: 262,
                height: 62,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo_IA_vermelho.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 230.0,
              left: 50.0,
              right: 50.0,
              child: Text('Resetar Senha',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify),
            ),
            const Positioned(
              top: 280.0,
              left: 50.0,
              right: 50.0,
              child: Text(
                  'Informe seu e-mail de cadastro para resetar sua senha',
                  style: TextStyle(fontSize: 17.0),
                  textAlign: TextAlign.justify),
            ),
            Positioned(
              top: 340,
              left: 40,
              right: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: SizedBox(
                  width: 348,
                  height: 18,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 158, 157, 157),
                      ),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 40,
              right: 40,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/newpass');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    backgroundColor: const Color(0xFF00AA88),
                    padding: const EdgeInsets.symmetric(
                      vertical: 7.0,
                      horizontal: 20.0,
                    ),
                  ),
                  child: const SizedBox(
                    width: 348,
                    height: 28,
                    child: Text(
                      'Enviar Instruções',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
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
