import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/input_direccion.dart';
import 'package:flutter_eats/src/widgets/input_nombre.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(                                                        //Retornar un Scaffold
      body: Container(                                                      //Container para la decoración del Background
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
        child: SafeArea(                                                    //SafeArea para evitar que la app abarque también la zona del appbar o los botones
          child: Container(                                                 //Contenedor para margenes de la pagina completa
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 60),     //Margenes para la página completa de inicio de sesión
            child: Center(                                                  //Centrado
              child: Column(                                                //Organizado por Columnas
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,           //Espacio entre widgets
                children: [
                   Flexible(                                                 //Permite Ajustar
                    child: Container(                                         //Contenedor que tiene la imagen para darle formato
                      width: 250,                                             //Medidas de la imagen
                      height: 250,
                      child: FadeInImage(                                     //Imagen con FadeInImage para poder usar placeholder
                        placeholder: AssetImage('assets/cargando.gif'),       //Gif Cargando
                        image: AssetImage('assets/noire.jpg')                 //Aquí va el logo de la app.
                      ),
                    ),
                  ),
                  InputNombre(),                                            //Creación del Input de Nombre
                  InputDireccion(),                                         //Creación del Input de Dirección
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),           //Separar un poco el boton del Input de arriba
                    child: FloatingActionButton.extended(                   //Botón extendido de Entrar
                      label: Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: (){
                        _entrar(context);                                     //Funcionalidad del Botón Entrar
                      }
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _entrar(context){
    /*if(InputNombre.nombre != '' && InputDireccion.direccion != ''){
      Navigator.pushNamed(context, 'restaurants');          //Navegación a la página principal -> Restaurantes
    } else {
      _mostrarAlerta(context);
    }
    */
  }

  _mostrarAlerta(BuildContext context){                                                     //Alerta si algún campo está vacío
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),         //Forma de la alerta
          title: Text('Error'),                                                             //Título de la alerta
          content: Text('Por favor, llena todos los campos primero.'),                      //Mensaje de la alerta
          actions: <Widget>[                                                                //Botón de la alerta
            TextButton(
              onPressed: () => Navigator.of(context).pop(),                                 //Cerrar alerta
              child: Text('Ok'),                                                            //Texto del botón de la alerta
            ),
          ],
        );
      },
      barrierDismissible: false,                                                            //Solamente cerrar alerta con el botón
    );
  }
}