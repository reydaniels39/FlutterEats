import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/producto.dart';

class CarritoProvider with ChangeNotifier {         //Provider del carrito

  List<Widget> _productos = [
    Producto(),
    Producto(),
    Producto(),
    Producto(),
    Producto(),
    Producto(),
    Producto(),
    Producto(),
  ];

  get productos{                   //Getter de productos
    return _productos;
  }

  set productos(productos){             //Setter de productos
    this._productos = productos;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  borrarProductos(){
    this._productos = [];

    notifyListeners();            //Notificar a los que requieren los cambios
  }
}