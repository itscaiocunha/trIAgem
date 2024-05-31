import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  Future<Map<String, dynamic>> fetchUserData() async {
    final response =
        await http.get(Uri.parse('http://192.168.15.76:8001/usuario-id'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      // Handle error scenario (e.g., throw exception or show error message)
      throw Exception('Failed to load user data');
    }
  }

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
            'Perfil',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFFE3A2E),
        ),
        body: Stack(
          children: [
            // ... Positioned( ... existing UI elements for profile screen (if any)

            FutureBuilder<Map<String, dynamic>>(
              future: fetchUserData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final userData = snapshot.data!;
                  // Access user data using userData['key']
                  return Column(
                    // ... arrange UI elements using userData
                    children: [
                      const Positioned(
                        top: 20,
                        left: 30,
                        right: 300,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xFF808080),
                          backgroundImage: AssetImage(
                            'assets/images/perfil_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 110,
                        right: 0,
                        child: Text(
                          'Nome Completo: ${userData['name']}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 120,
                        left: 40,
                        right: 40,
                        child: Divider(
                          color: Color(0xFFFFE868),
                          thickness: 1,
                        ),
                      ),
                      const Positioned(
                        top: 150,
                        left: 140,
                        right: 0,
                        child: Text(
                          'Dados Pessoais',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 40,
                        right: 0,
                        child: SizedBox(
                          height: 200,
                          child: ListView(
                            children: <Widget>[
                              Text(
                                  'Data de Nascimento: ${userData['dt_nascimento']}'),
                              const SizedBox(height: 25.0),
                              Text('CPF: ${userData['cpf']}'),
                              const SizedBox(height: 25.0),
                              Text('Altura: ${userData['altura']}'),
                              const SizedBox(height: 25.0),
                              Text('Alergias: ${userData['alergias']}'),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 250,
                        right: 0,
                        child: SizedBox(
                          height: 200,
                          child: ListView(
                            children: <Widget>[
                              Text('Sexo: ${userData['Sexo']}'),
                              const SizedBox(height: 25.0),
                              Text('Cartão SUS: ${userData['cartao_sus']}'),
                              const SizedBox(height: 2.0),
                              Text('Peso: ${userData['peso']}'),
                              const SizedBox(height: 25.0),
                              Text('Doenças: ${userData['doenca_cronica']}'),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 390,
                        left: 40,
                        right: 40,
                        child: Divider(
                          color: Color(0xFFFFE868),
                          thickness: 1,
                        ),
                      ),
                      const Positioned(
                        top: 420,
                        left: 140,
                        right: 0,
                        child: Text(
                          'Dados de Contato',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 460,
                        left: 40,
                        right: 0,
                        child: SizedBox(
                          height: 200,
                          child: ListView(
                            children: <Widget>[
                              Text('CEP: ${userData['cep']}'),
                              const SizedBox(height: 25.0),
                              Text('Bairro: ${userData['bairro']}'),
                              const SizedBox(height: 25.0),
                              Text('Cidade: ${userData['cidade']}'),
                              const SizedBox(height: 25.0),
                              Text('Telefone: ${userData['telefone']}'),
                              const SizedBox(height: 25.0),
                              Text('E-mail: ${userData['email']}'),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 460,
                        left: 250,
                        right: 0,
                        child: SizedBox(
                          height: 200,
                          child: ListView(
                            children: <Widget>[
                              Text('Rua: ${userData['rua']}'),
                              const SizedBox(height: 25.0),
                              Text('Número: ${userData['numero']}'),
                              const SizedBox(height: 25.0),
                              Text('Estado: ${userData['estado']}'),
                              const SizedBox(height: 25.0),
                              Text('Emergência: ${userData['telefone_ctt']}'),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/reset');
                                },
                                child: const Text(
                                  'Senha',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 150,
                        right: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/initial');
                          },
                          child: const Text('Sair'),
                        ),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                // Show a loading indicator while fetching data
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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
                break;
              case 2:
                Navigator.pushNamed(context, '/historico');
                break;
            }
          },
        ),
      ),
    );
  }
}
