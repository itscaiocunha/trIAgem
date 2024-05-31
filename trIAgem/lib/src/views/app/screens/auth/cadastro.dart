import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cadastro extends StatefulWidget {
  Cadastro({Key? key}) : super(key: key);

  @override
  CadastroState createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  bool _passwordVisible = false;
  bool checkbox = false;
  bool acceptedTerms = false;

  final _nomeController = TextEditingController();
  final _sobrenomeController = TextEditingController();
  final _nascimentoController = TextEditingController();
  final _cpfController = TextEditingController();
  final _susController = TextEditingController();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();
  final _sangueController = TextEditingController();
  final _sexoController = TextEditingController();
  final _alergiasController = TextEditingController();
  final _doencaController = TextEditingController();
  final _cepController = TextEditingController();
  final _logradouroController = TextEditingController();
  final _bairroController = TextEditingController();
  final _numeroController = TextEditingController();
  final _complementoController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _estadoController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _contatoController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  Future<void> cadastroUser(
    String nome,
    String sobrenome,
    String nascimento,
    String cpf,
    String sus,
    String telefone,
    String contato,
    String cep,
    String logradouro,
    String numero,
    String complemento,
    String bairro,
    String cidade,
    String estado,
    String alergias,
    String doenca,
    String email,
    String senha,
    String peso,
    String altura,
    String sangue,
    String sexo,
  ) async {
    const String baseUrl = 'http://177.31.18.201:8001';
    final Uri loginUrl = Uri.parse('$baseUrl/usuario');

    final Map<String, String> body = {
      'nome': nome,
      "sobrenome": sobrenome,
      "dt_nascimento": nascimento,
      "cpf": cpf,
      "cartao_sus": sus,
      "telefone": telefone,
      "telefone_ctt": contato,
      "cep": cep,
      "rua": logradouro,
      "numero": numero,
      "complemento": complemento,
      "bairro": bairro,
      "cidade": cidade,
      "estado": estado,
      "alergias": alergias,
      "doencas_cronicas": doenca,
      "email": email,
      "senha": senha,
      "peso": peso,
      "altura": altura,
      "tp_sanguineo": sangue,
      "sexo": sexo
    };

    try {
      final response = await http.post(
        loginUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        Navigator.pushNamed(context, '/home');
        print('Cadastro successful!');
      } else {
        print('Cadastro falhou! Código de status: ${response.statusCode}');
      }
    } on Exception catch (e) {
      print('Erro durante o Cadastro: $e');
    }
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFED701),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 46.0,
                ),
                SizedBox(
                  child: Container(
                    width: 262,
                    height: 62,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/logo_IA_vermelho.png'))),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _nomeController,
                      style: const TextStyle(fontSize: 16),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu nome';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Sobrenome',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _sobrenomeController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu sobrenome';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Data de Nascimento (YYYY-MM-DD)',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _nascimentoController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha sua data de nascimento';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'CPF',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _cpfController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu cpf';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Cartão SUS',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _susController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu cartão do SUS';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Peso',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _pesoController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu peso';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Altura',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _alturaController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu altura';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Tipo Sanguíneo',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _sangueController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu sangue';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Sexo',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _sexoController,
                      style: const TextStyle(fontSize: 16),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu sexo';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Alergias',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _alergiasController,
                      style: const TextStyle(fontSize: 16),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha suas alergias';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Doenças Crônicas',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'CEP',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _cepController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu CEP';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Rua',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _logradouroController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha sua rua';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Número',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _numeroController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu número';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Bairro',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _bairroController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu bairro';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: SizedBox(
                      width: 330,
                      height: 18,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Complemento (Caso não tenha coloque 0)',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 158, 157, 157),
                          ),
                          border: InputBorder.none,
                        ),
                        controller: _complementoController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, preencha seu complemento';
                          }
                          return null;
                        },
                      ),
                    )),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Cidade',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _cidadeController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu cidade';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Estado (UF)',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _estadoController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu estado';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Telefone',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _telefoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu telefone';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Telefone de Emergência',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _contatoController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu telefone para emergências';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                      ),
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha seu e-mail';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 18,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 158, 157, 157),
                        ),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      style: const TextStyle(fontSize: 16),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha o nome';
                        }
                        return null;
                      },
                      obscureText: !_passwordVisible,
                      controller: _senhaController,
                    ),
                  ),
                ),
                CheckboxListTile(
                  value: acceptedTerms,
                  onChanged: (bool? value) {
                    setState(() {
                      acceptedTerms = value!;
                    });
                  },
                  title: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/termo');
                    },
                    child: const Center(
                      child: Text(
                        'Termos de Uso',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 0, 28, 50),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: acceptedTerms
                        ? () {
                            final nome = _nomeController.text;
                            final sobrenome = _sobrenomeController.text;
                            final nascimento = _nascimentoController.text;
                            final cpf = _cpfController.text;
                            final sus = _susController.text;
                            final telefone = _telefoneController.text;
                            final contato = _contatoController.text;
                            final cep = _cepController.text;
                            final logradouro = _logradouroController.text;
                            final numero = _numeroController.text;
                            final complemento = _complementoController.text;
                            final bairro = _bairroController.text;
                            final cidade = _cidadeController.text;
                            final estado = _estadoController.text;
                            final alergia = _alergiasController.text;
                            final doenca = _doencaController.text;
                            final email = _emailController.text;
                            final senha = _senhaController.text;
                            final peso = _pesoController.text;
                            final altura = _alturaController.text;
                            final sangue = _sangueController.text;
                            final sexo = _sexoController.text;
                            cadastroUser(
                                nome,
                                sobrenome,
                                nascimento,
                                cpf,
                                sus,
                                telefone,
                                contato,
                                cep,
                                logradouro,
                                numero,
                                complemento,
                                bairro,
                                cidade,
                                estado,
                                alergia,
                                doenca,
                                email,
                                senha,
                                peso,
                                altura,
                                sangue,
                                sexo);
                          }
                        : null,
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
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Center(
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
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                    ),
                    child: const SizedBox(
                      width: 348,
                      height: 28,
                      child: Text(
                        'Já tenho cadastro',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
