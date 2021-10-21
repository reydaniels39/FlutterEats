import 'package:flutter/material.dart';

class InputsLoginProvider with ChangeNotifier {         //Clase Provider, permite llevar los datos de los inputs de la Login Page y sus actualizaciones,
                                                                                                                //así como notificar al resto de la app
  String _nombre = '';          //Valor del input nombre
  String _direccion = '';       //Valor del input direccion

  get nombre{                   //Getter de nombre
    return _nombre;
  }

  set nombre(nombre){             //Setter de nombre
    this._nombre = nombre;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get direccion{                    //Getter de dirección
    return _direccion;
  }

  set direccion(direccion){             //Setter de dirección
    this._direccion = direccion;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

}