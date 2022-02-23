import 'package:flutter/cupertino.dart';

class PaginaGerencial {
  PaginaGerencial(this._pageController);

  final PageController _pageController;

  int pagina = 0;

  void passarPagina(int value) {
    if (value == pagina) return;
    pagina = value;
    _pageController.jumpToPage(value);
  }
}
