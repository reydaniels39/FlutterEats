import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/producto.dart';

class CarritoProvider with ChangeNotifier {         //Provider del carrito

  List<Widget> _productos = [];
  List<dynamic> _datosProducto = ["", 0];
  List<int> _preciosProductos = [];
  int _precioTotal = 0;

  get precioTotal{                   //Getter de precioTotal
    return _precioTotal;
  }

  set precioTotal(precioTotal){             //Setter de precioTotal
    this._precioTotal = precioTotal;
    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get productos{                   //Getter de productos
    return _productos;
  }

  set productos(productos){             //Setter de productos
    this._productos = productos;
    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get datosProducto{                   //Getter de Datosproducto
    return _datosProducto;
  }

  set datosProducto(datosProductos){             //Setter de Datosproducto
    this._datosProducto = datosProductos;
    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get preciosProductos{                   //Getter de preciosProductos
    return _preciosProductos;
  }

  set preciosProductos(preciosProductos){             //Setter de preciosProductos
    this._preciosProductos = preciosProductos;
    notifyListeners();            //Notificar a los que requieren los cambios
  }

  agregarPrecio(valor){
    this._preciosProductos.add(valor);
    notifyListeners();

    obtenerTotal(valor);
  }

  obtenerTotal(valor){
    this.precioTotal += valor;
    notifyListeners();
  }

  borrarPrecios(){
    this._preciosProductos = [];
    this.precioTotal = 0;
    notifyListeners();
  }

  borrarProductos(){
    this._productos = [];
    notifyListeners();            //Notificar a los que requieren los cambios
  }

  agregarProducto(carritoProvider){
    this._productos.add(Producto().productoTemporal(carritoProvider));
    notifyListeners();
  }

  crearProducto(nombre, precio){
    this._datosProducto[0] = nombre;
    this._datosProducto[1] = precio;
    notifyListeners();
  }
}