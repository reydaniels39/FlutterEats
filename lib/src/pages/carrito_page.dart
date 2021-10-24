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
      drawer: MainDrawer(),
      body: _body(),                                                       //Llamamos a traer al body
    );
  
  }

  Widget _body(){
    return Container(                                                      //Container para la decoración del Background
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 14, 57, 1),
            Color.fromRGBO(21, 19, 20, 1),
          ],
        ),
      ),
      
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Row(
                children: [
                  Text('Total: \$0',
                    style: TextStyle(
                      color: Colors.white,
                    )
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Text('¡Pedir!'),
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



                        