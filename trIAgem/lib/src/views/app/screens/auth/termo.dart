import 'package:flutter/material.dart';

class TermoSeguranca extends StatelessWidget {
  const TermoSeguranca({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, '/cadastro_page2');
            },
          ),
          title: const Text(
            'Termo de Uso',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFFE3A2E),
        ),
        body: const SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: Text(
                  "Termo de Compromisso, Segurança e Responsabilidade do Usuário",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 70.0, 16.0, 16.0),
                child: Text(
                  'Este Termo de Compromisso, Segurança e Responsabilidade do Usuário ("Termo") estabelece as diretrizes e obrigações essenciais para garantir a segurança, a confidencialidade e a integridade de todas as partes envolvidas no uso de sistemas, serviços, informações, dispositivos ou recursos relacionados a qualquer plataforma, aplicativo, website ou sistema fornecido por qualquer entidade, doravante denominada "Fornecedor", e o usuário, doravante denominado "Usuário".',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
                child: Text(
                  'Segurança da Informação e Acesso \n1.1 O Usuário deve adotar medidas razoáveis de segurança para proteger suas credenciais de acesso, senhas, informações pessoais e quaisquer outros dados sensíveis relacionados ao uso dos serviços fornecidos pelo Fornecedor. \n1.2 É proibido ao Usuário divulgar, compartilhar, emprestar ou vender suas credenciais de acesso a terceiros sem a devida autorização expressa do Fornecedor. \n1.3 O Usuário concorda em notificar imediatamente o Fornecedor sobre qualquer uso não autorizado de sua conta ou qualquer suspeita de comprometimento da segurança.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 400.0, 16.0, 16.0),
                child: Text(
                  'Uso Responsável e Ético \n2.1 O Usuário concorda em utilizar os serviços fornecidos pelo Fornecedor de forma ética, legal e responsável, não se envolvendo em atividades fraudulentas, difamatórias, ilegais, ofensivas, prejudiciais, abusivas ou discriminatórias que possam afetar negativamente o Fornecedor, outros usuários ou terceiros. \n2.2 O Usuário se compromete a cumprir todas as leis, regulamentos e diretrizes aplicáveis relacionadas ao uso dos serviços, incluindo, mas não se limitando a, leis de direitos autorais, propriedade intelectual, privacidade, segurança cibernética e proteção de dados.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 585.0, 16.0, 16.0),
                child: Text(
                  'Privacidade e Dados Pessoais \n3.1 O Fornecedor compromete-se a proteger a privacidade do Usuário e a processar os dados pessoais de acordo com as leis de proteção de dados aplicáveis. \n3.2 O Usuário concorda em fornecer informações verdadeiras, precisas e atualizadas ao Fornecedor, e compreende que o uso de informações falsas ou enganosas pode resultar na suspensão ou rescisão de sua conta. \n3.3 O Usuário tem o direito de acessar, retificar ou excluir seus dados pessoais, conforme permitido pela lei aplicável, e pode entrar em contato com o Fornecedor para exercer esses direitos.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 790.0, 16.0, 16.0),
                child: Text(
                  'Atualização de Software e Segurança de Dispositivos \n4.1 O Usuário é responsável por manter seus dispositivos e sistemas atualizados com as últimas atualizações de segurança e patches de software fornecidos pelo fabricante ou pelo Fornecedor, quando aplicável. \n4.2 O Usuário reconhece que a falta de atualizações de segurança pode resultar em vulnerabilidades que podem comprometer a segurança de seus dados e do sistema em geral.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 950.0, 16.0, 16.0),
                child: Text(
                  'Comunicação e Notificações \n5.1 O Usuário concorda em receber comunicações e notificações do Fornecedor relacionadas aos serviços, atualizações de segurança, promoções, mudanças nos termos de serviço e outras informações importantes, por meio dos canais de comunicação disponibilizados pelo Fornecedor.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 1070.0, 16.0, 16.0),
                child: Text(
                  'Responsabilidade e Indenização \n6.1 O Usuário reconhece que é o único responsável por qualquer uso indevido de sua conta e concorda em indenizar e isentar o Fornecedor de qualquer responsabilidade decorrente de atividades ilegais, fraudulentas ou não autorizadas em sua conta. \n6.2 O Usuário concorda em indenizar o Fornecedor por quaisquer reclamações, perdas, danos, custos e despesas, incluindo honorários advocatícios razoáveis, decorrentes de sua violação deste Termo.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 1240.0, 16.0, 16.0),
                child: Text(
                  'Termo de Rescisão e Encerramento da Conta \n7.1 Este Termo permanecerá em vigor enquanto o Usuário utilizar os serviços do Fornecedor e poderá ser rescindido por qualquer das partes mediante notificação por escrito. \n7.2 O Fornecedor reserva-se o direito de suspender ou encerrar a conta do Usuário a qualquer momento, com ou sem aviso prévio, se considerar que o Usuário violou este Termo ou de outra forma representou um risco para a segurança ou a integridade dos serviços.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 1410.0, 16.0, 16.0),
                child: Text(
                  'Alterações no Termo \n8.1 O Fornecedor reserva-se o direito de alterar este Termo a qualquer momento, notificando o Usuário por meio de comunicação adequada. O uso contínuo dos serviços após a notificação constituirá aceitação das alterações.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 1510.0, 16.0, 16.0),
                child: Text(
                  'Lei Aplicável e Jurisdição \n9.1 Este Termo será regido pelas leis do país ou jurisdição aplicável e quaisquer disputas relacionadas a este Termo serão resolvidas nos tribunais competentes dessa jurisdição.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
