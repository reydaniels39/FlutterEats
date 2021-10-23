import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carrito',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Text('CarritoPage'),
      drawer: MainDrawer(),
    );
  }
}