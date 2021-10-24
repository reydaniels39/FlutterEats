import 'package:flutter/material.dart';

class PaginaProvider extends ChangeNotifier {       //Permite identificar qué opcion tenemos seleccionada en el BottomNavigationBar
  int _paginaSeleccionada = 0;

  int get paginaSeleccionada{                       //Getter de la pagina seleccionada
    return this._paginaSeleccionada;
  }

  set paginaSeleccionada(int i){                    //Setter de la pagina seleccionada
    this._paginaSeleccionada = i;
    notifyListeners();
  }
}