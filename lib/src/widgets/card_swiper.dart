import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    /*return Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images[index],
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: images.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
      */

    final size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      width: double.infinity,
      child: Swiper(
        itemCount: 5,
        layout: SwiperLayout.STACK,
        itemWidth: size.width*0.6,
        itemHeight: size.height*0.4,
        itemBuilder: (BuildContext context, int index){
          
              /*var images_list = [
                AssetImage('card-swiper-test/pizza1.jpeg'),
                AssetImage('card-swiper-test/pizza2.jpeg'),
                AssetImage('card-swiper-test/pizza3.jpeg'),
                AssetImage('card-swiper-test/pizza4.jpeg'),
                AssetImage('card-swiper-test/pizza5.jpeg'),
              ];*/
          return ClipRRect(
            child: FadeInImage(
              placeholder: AssetImage('cargando.gif'), 
              //image: images_list[index],
              image: AssetImage('card-swiper-test/pizza1.jpeg'),
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
    
  }
}