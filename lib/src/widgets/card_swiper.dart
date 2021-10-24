import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:provider/provider.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);        //Instancia del provider de Restaurant Info

    return Container(
      width: double.infinity,
      height: 300,
      child: Swiper(
        itemWidth: 280,
        itemHeight: 280,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(                                         //Para redondear las imagenes
            borderRadius: BorderRadius.circular(25),
            child: FadeInImage(                                     //Imagen con FadeInImage para poder usar placeholder
              placeholder: AssetImage('assets/cargando.gif'),         //Gif Cargando
              image: AssetImage('assets/restaurantImages/' + separarExtension(restaurantInfoProvider.logo)[0] + '$index' + '.' + separarExtension(restaurantInfoProvider.logo)[1]),              //Imágenes del Restaurante
              fit: BoxFit.fitHeight,
            ),
          );
        },
        autoplay: true,
        itemCount: restaurantInfoProvider.numeroImagenes,
        layout: SwiperLayout.STACK,
      ),
    );
  }

  separarExtension(String nombreCompleto){
    List<String> nombreSeparado = nombreCompleto.split('.');
    return nombreSeparado;
  }
}