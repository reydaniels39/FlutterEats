import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/restaurants_provider.dart';

class RestaurantInfoProvider with ChangeNotifier {         //Clase Provider, permite seleccionar los datos de un restaurante y notificar a las paginas para cargarlos

  int _id = 0;          //RestaurantID
  String _titulo = '';
  double _calificacion = 0;
  String _informacion = '';

  //final restaurantsMap = restaurantsProvider.cargarData();

  get id{                   //Getter de ID
    return _id;
  }

  set id(id){             //Setter de ID
    this._id = id;

    notifyListeners();            //Notificar a los que requieren los cambios
    seleccionarRestaurante(this._id);
  }

  get titulo{
    return _titulo;
  }

  set titulo(titulo){
    this._titulo = titulo;

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

  seleccionarRestaurante(id){
    switch (id) {
      case 1:
        this._titulo = 'a'; //restaurantsMap[0]['titulo'];
        this._calificacion = 4.3;//restaurantsMap[0]['calificacion'];
        this._informacion = 'fdfgdfgdfgdfg';//restaurantsMap[0]['informacion'];
        break;
      case 2:
        this._titulo = 'b';
        this._calificacion = 4;
        this._informacion = 'asdawdawda';
        break;
      case 3:
        this._titulo = 'c';
        this._calificacion = 5;
        this._informacion = 'werwcsdfs';
        break;
      case 4:
        this._titulo = 'd';
        this._calificacion = 3.5;
        this._informacion = 'asujergjy';
        break;
      default:
        this._titulo = '';
        this._calificacion = 0;
        this._informacion = '';
      break;
    }
  }
}