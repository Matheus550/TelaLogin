import 'package:app/modelo/pagina_gerencial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Menutitle extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Menutitle(
      {required this.iconData, required this.title, required this.pagina});

  final IconData iconData;
  final String title;
  final int pagina;

  @override
  Widget build(BuildContext context) {
    final int recorrerpagina = context.watch<PaginaGerencial>().pagina;
    // ignore: non_constant_identifier_names
    final Color Corprimaria = Theme.of(context).primaryColor;

    return InkWell(
      onTap: () {
        context.read<PaginaGerencial>().passarPagina(pagina);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
                iconData,
                size: 32,
                color:
                    recorrerpagina == pagina ? Corprimaria : Colors.grey[700],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color:
                    recorrerpagina == pagina ? Corprimaria : Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
