import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Método para lidar com a navegação entre as diferentes telas
  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/perfil');
        break;
      case 2:
        Navigator.pushNamed(context, '/historico');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              top: 290,
              left: 51,
              right: 51,
              child: Image.asset(
                'assets/images/higia_ia.png',
                width: 348.0,
                height: 348.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              bottom: 130.0,
              left: 41.0,
              right: 41.0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: const Color(0xFFFED701),
                          content: Container(
                            height: 400,
                            width: 300,
                            child: Stack(
                              children: [
                                const Positioned(
                                  top: 15,
                                  left: 0,
                                  right: 0,
                                  child: Text(
                                    'Antes de iniciar a conversa com nosso assistente virtual, identifique em qual hospital você está!!',
                                    style: TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const Positioned(
                                  top: 150,
                                  left: 0,
                                  right: 0,
                                  child: Text('Leia o QR CODE do seu hospital!',
                                      style: TextStyle(fontSize: 16.0),
                                      textAlign: TextAlign.center),
                                ),
                                Positioned(
                                  top: 180,
                                  left: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/identify');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      backgroundColor: const Color.fromRGBO(
                                          58, 148, 209, 1.0),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 10.0),
                                    ),
                                    child: const SizedBox(
                                      width: 348,
                                      height: 28,
                                      child: Text(
                                        'Abrir Câmera',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 240,
                                  left: 0,
                                  right: 0,
                                  child: Text('Ou insira o código manualmente',
                                      style: TextStyle(fontSize: 16.0),
                                      textAlign: TextAlign.center),
                                ),
                                Positioned(
                                  top: 270,
                                  left: 40,
                                  right: 40,
                                  child: ElevatedButton(
                                    onPressed:
                                        () {}, // Adicionar função de callback aqui
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
                                          labelText: '_ _ _ _ _ _',
                                          labelStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 158, 157, 157),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 330,
                                  left: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/chat');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      backgroundColor: const Color.fromRGBO(
                                          58, 148, 209, 1.0),
                                    ),
                                    child: const SizedBox(
                                      width: 348,
                                      height: 28,
                                      child: Text(
                                        'Enviar',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      backgroundColor: const Color(0xFF00AA88),
                      fixedSize: const Size(348, 78)),
                  child: const Text(
                    'Começar Atendimento',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) => _onItemTapped(context, index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Histórico',
            ),
          ],
        ),
      ),
    );
  }
}
