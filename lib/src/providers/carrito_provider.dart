import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/producto.dart';

class CarritoProvider with ChangeNotifier {         //Provider del carrito

  List<Widget> _productos = [];
  List<dynamic> _datosProducto = ["", 0, 0];

  get productos{                   //Getter de productos
    return _productos;
  }

  set productos(productos){             //Setter de productos
    this._productos = productos;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get datosProducto{                   //Getter de productos
    return _datosProducto;
  }

  set datosProducto(datosProductos){             //Setter de productos
    this._datosProducto = datosProductos;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  borrarProductos(){
    this._productos = [];

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  agregarProducto(carritoProvider){
    this._productos.add(Producto().productoTemporal(carritoProvider));

    notifyListeners();
  }

  crearProducto(nombre, precio, uno){
    this._datosProducto[0] = nombre;
    this._datosProducto[1] = precio;
    this._datosProducto[2] = uno;

    notifyListeners();
  }
}