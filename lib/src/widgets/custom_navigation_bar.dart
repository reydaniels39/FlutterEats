import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/pagina_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final paginaProvider = Provider.of<PaginaProvider>(context);    //Instanciamos el provider que guardará la página
    final pagina = paginaProvider.paginaSeleccionada;

    return ClipRRect(                                               //Para que el BottomNavigationBar tenga bordes redondeados
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        onTap: (int i) => paginaProvider.paginaSeleccionada = i,
        currentIndex: pagina,                                         //La opcion seleccionada sea la pagina seleccionada
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromRGBO(80, 80, 80, 1),
        backgroundColor: Color.fromRGBO(255, 209, 0, 1),
        selectedFontSize: 16,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.storefront_outlined,
              size: 30,
            ),
            label: 'Restaurante',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu_rounded,
              size: 30,
            ),
            label: 'Menú',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop,
              size: 30,
            ),
            label: 'Ubicaciones',
          ),
        ],
      ),
    );
  }
}