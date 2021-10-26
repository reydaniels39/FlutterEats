import 'package:flutter/material.dart';

class Producto{
  Widget productoTemporal(carritoProvider){
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(                                                      //Muestra nombre y precio del producto
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${carritoProvider.datosProducto[0]}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text('\$${carritoProvider.datosProducto[1]}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(                                                //Muestra la cantidad de unidades y los iconos de + y -
              width: 20,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Icon( Icons.remove, 
                      color: Colors.white,
                    ),
                    onTap: (){},                                              //Al presionar el ícono de menos...
                  ),
                  Text('2',                                                   //Unidades del producto
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    child: Icon( Icons.add, 
                      color: Colors.white,
                    ),
                    onTap: (){},                                             //Al presionar el ícono de más...
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}