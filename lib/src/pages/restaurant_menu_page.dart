import 'package:flutter/material.dart';

class RestaurantMenuPage extends StatelessWidget {
  const RestaurantMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  
Widget build(BuildContext context) {
    return Container(
      child: Text('restaurant_menu page',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}