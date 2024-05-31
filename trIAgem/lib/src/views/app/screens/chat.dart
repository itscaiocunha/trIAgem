import 'package:flutter/material.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFE3A2E),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFE3A2E),
          centerTitle: true,
          title: Image.asset(
            'assets/images/higia_popup.png',
            fit: BoxFit.contain,
            height: 60,
          ),
        ),
        body: Stack(
          children: [
            // Imagem de fundo cobrindo toda a tela
            Image.asset(
              'assets/images/backgroud_chat.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),

            // Coluna para agrupar o campo de texto e o botão
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildMessageInput(size),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput(Size size) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Digite aqui...',
        hintStyle: const TextStyle(color: Color.fromARGB(255, 105, 104, 104)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        suffixIcon: const Icon(Icons.send),
      ),
    );
  }
}
