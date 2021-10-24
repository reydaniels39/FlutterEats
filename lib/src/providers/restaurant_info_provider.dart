import 'package:flutter/material.dart';

class RestaurantInfoProvider with ChangeNotifier {         //Clase Provider, permite seleccionar los datos de un restaurante y notificar a las paginas para cargarlos

  String _titulo = '';
  double _calificacion = 0;
  String _informacion = '';
  String _logo = '';
  String _categoria = '';
  int _numeroImagenes = 0;
  List _ubicaciones = [];
  List _alimentos = [];
  List _precioAlimentos = [];
  List _bebidas = [];
  List _precioBebidas = [];

  get titulo{                   //Getter de titulo
    return _titulo;
  }

  set titulo(titulo){             //Setter de titulo
    this._titulo = titulo;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get logo{                   //Getter de logo
    return _logo;
  }

  set logo(logo){             //Setter de logo
    this._logo = logo;

    notifyListeners();            //Notificar a los que requieren los cambios
  }

  get numeroImagenes{
    return _numeroImagenes;
  }

  set numeroImagenes(numeroImagenes){
    this._numeroImagenes = numeroImagenes;

    notifyListeners();
  }

  get categoria{
    return _categoria;
  }

  set categoria(categoria){
    this._categoria = categoria;

    notifyListeners();
  }

  get calificacion{
    return _calificacion;
  }

  set calificacion(calificacion){
    this._calificacion = calificacion;

    notifyListeners();
  }

  get informacion{
    return _informacion;
  }

  set informacion(informacion){
    this._informacion = informacion;

    notifyListeners();
  }

  get ubicaciones{
    return _ubicaciones;
  }

  set ubicaciones(ubicaciones){
    this._ubicaciones = ubicaciones;

    notifyListeners();
  }

  get alimentos{
    return _alimentos;
  }

  set alimentos(alimentos){
    this._alimentos = alimentos;

    notifyListeners();
  }

  get precioAlimentos{
    return _precioAlimentos;
  }

  set precioAlimentos(precioAlimentos){
    this._precioAlimentos = precioAlimentos;

    notifyListeners();
  }

  get bebidas{
    return _bebidas;
  }
  
  set bebidas(bebidas){
    this._bebidas = bebidas;

    notifyListeners();
  }

  get precioBebidas{
    return _precioBebidas;
  }

  set precioBebidas(precioBebidas){
    this._precioBebidas = precioBebidas;

    notifyListeners();
  }

}