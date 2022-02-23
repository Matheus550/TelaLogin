import 'package:app/comum/menu_customisado/menu_customisado.dart';
import 'package:app/modelo/pagina_gerencial.dart';
import 'package:app/telas/login/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Telabase extends StatelessWidget {
  Telabase({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => PaginaGerencial(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          const TelaLogin(),
          Scaffold(
            drawer: const MenuCustoizado(),
            appBar: AppBar(
              title: const Text('Tela 2'),
            ),
          ),
          Scaffold(
            drawer: const MenuCustoizado(),
            appBar: AppBar(
              title: const Text('Tela 3'),
            ),
          ),
        ],
      ),
    );
  }
}
