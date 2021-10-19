
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //onTap: (){},
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_outlined),
          label: 'Restaurante',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_rounded),
          label: 'Menú',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pin_drop),
          label: 'Ubicaciones',
        ),
      ],
    );
  }
}
