import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/carrito_provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';
import 'package:provider/provider.dart';

class CarritoPage extends StatelessWidget{
  const CarritoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);
    final carritoProvider = Provider.of<CarritoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carrito',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => _mostrarAlerta(context, carritoProvider),
            icon: Icon(
              Icons.delete_forever,
              size: 33,
            ),
            padding: EdgeInsets.only(
              right: 15
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: _body(inputsLoginProvider, carritoProvider),                                                       //Llamamos a traer al body
    );
  
  }

  Widget _body(inputsLoginProvider, carritoProvider){
    
    return Container(                                                      //Container para la decoración del Background
      decoration: BoxDecoration(
        color: Color.fromRGBO(19, 19, 19, 1),
      ),
      
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(                                                      //Muestra la direccion ingresada en el login page
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Enviando a ${inputsLoginProvider.direccion}:',                
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),

              SizedBox(height: 15.0),                                           //Espacio entre widgets

              Expanded(                                                         //ListView de los productos
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.0),
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView(
                    children: carritoProvider.productos,
                  ),
                ),
              ),

              Container(                                                       //Muestra el monto total y el boton de pedir
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total: \$${carritoProvider.precioTotal}',                                        //Monto total
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      )
                    ),
                    TextButton(
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 209, 0, 1),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Center(
                          child: Text(
                            '¡Pedir!',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      onPressed: (){},                                            //Al presionar el botón de pedir...
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _mostrarAlerta(BuildContext context, carritoProvider){                                                     //Alerta si algún campo está vacío
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),                         //Forma de la alerta
          title: Text('Vaciar Carrito'),                                                                    //Título de la alerta
          content: Text('Esto eliminará todos los artículos del carrito. ¿Continuar?'),     //Mensaje de la alerta
          actions: <Widget>[                                                                                //Botón de la alerta
            TextButton(
              onPressed: () => Navigator.of(context).pop(),                                 //Cerrar alerta
              child: Text('Cancelar',
                style: TextStyle(color: Colors.black),
              ),                                                            //Texto del botón de la alerta
            ),
            TextButton(
              onPressed: () {
                carritoProvider.borrarProductos();
                carritoProvider.borrarPrecios();
                Navigator.of(context).pop();
              },                                 //Cerrar alerta
              child: Text('Vaciar Carrito',
                style: TextStyle(color: Colors.red),
              ),                                                            //Texto del botón de la alerta
            ),
          ],
        );
      },
    );
  }
}



                        