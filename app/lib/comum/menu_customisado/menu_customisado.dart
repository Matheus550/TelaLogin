import 'package:app/comum/menu_customisado/menutitle.dart';
import 'package:flutter/material.dart';

class MenuCustoizado extends StatelessWidget {
  const MenuCustoizado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          Menutitle(
            iconData: Icons.home,
            title: 'Home',
            pagina: 0,
          ),
          Menutitle(iconData: Icons.list, title: 'Produtos', pagina: 1),
          Menutitle(
            iconData: Icons.playlist_add_check,
            title: 'MEus pedidos',
            pagina: 2,
          ),
        ],
      ),
    );
  }
}
