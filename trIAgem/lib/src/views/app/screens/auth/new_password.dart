import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 117,
              left: 83,
              right: 83,
              child: Container(
                width: 262,
                height: 62,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo_IA_amarelo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/menu001.png',
                width: 428.0,
                height: 1171.0,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 350,
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
                      labelText: 'Nova Senha',
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
              top: 410,
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
                      labelText: 'Repetir Senha',
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
              top: 470,
              left: 40,
              right: 40,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
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
                      'Finalizar',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
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
