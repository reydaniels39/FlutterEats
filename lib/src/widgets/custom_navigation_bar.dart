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
    );
  }
}