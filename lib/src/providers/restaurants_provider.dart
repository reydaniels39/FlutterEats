import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _RestaurantsProvider{

  List<dynamic> opciones = [];
  _RestaurantsProvider(){
    cargarData();
  }

  Future <List<dynamic>> cargarData() async{
    final resp = await rootBundle.loadString('data/restaurants_opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['restaurantes'];
    return opciones;
  }
}

final restaurantsProvider = new _RestaurantsProvider();