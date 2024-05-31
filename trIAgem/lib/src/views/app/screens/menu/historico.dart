import 'package:flutter/material.dart';

class Historico extends StatelessWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          title: const Text(
            'Histórico',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFFE3A2E),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 40,
              right: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 245, 244, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: SizedBox(
                  width: 150,
                  height: 18,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Pesquisar',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 80,
              left: 40,
              right: 40,
              child: Divider(
                color: Color(0xFFFFE868),
                thickness: 1,
              ),
            ),
            Positioned(
              top: 100,
              left: 40,
              right: 0,
              child: SizedBox(
                height: 200,
                child: ListView(
                  children: const <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'Histórico A',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text('00/00/000 00:00'),
                    SizedBox(height: 25.0),
                    Text('Motivo: '),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 300,
              right: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.file_open,
                ),
                onPressed: () {},
              ),
            ),
            const Positioned(
              top: 250,
              left: 40,
              right: 40,
              child: Divider(
                color: Color(0xFFFFE868),
                thickness: 1,
              ),
            ),
            Positioned(
              top: 280,
              left: 40,
              right: 0,
              child: SizedBox(
                height: 200,
                child: ListView(
                  children: const <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'Histórico B',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text('00/00/000 00:00'),
                    SizedBox(height: 25.0),
                    Text('Motivo: '),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 300,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.file_open),
                onPressed: () {},
              ),
            ),
            const Positioned(
              top: 430,
              left: 40,
              right: 40,
              child: Divider(
                color: Color(0xFFFFE868),
                thickness: 1,
              ),
            ),
            Positioned(
              top: 460,
              left: 40,
              right: 0,
              child: SizedBox(
                height: 200,
                child: ListView(
                  children: const <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'Histórico C',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text('00/00/000 00:00'),
                    SizedBox(height: 25.0),
                    Text('Motivo: '),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 510,
              left: 300,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.file_open),
                onPressed: () {},
              ),
            ),
            const Positioned(
              top: 610,
              left: 40,
              right: 40,
              child: Divider(
                color: Color(0xFFFFE868),
                thickness: 1,
              ),
            ),
            Positioned(
              top: 640,
              left: 40,
              right: 0,
              child: SizedBox(
                height: 200,
                child: ListView(
                  children: const <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'Histórico D',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text('00/00/000 00:00'),
                    SizedBox(height: 25.0),
                    Text('Motivo: '),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 510,
              left: 300,
              right: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.file_open,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                Navigator.pushNamed(context, '/perfil');
                break;
              case 2:
                break;
            }
          },
        ),
      ),
    );
  }
}
