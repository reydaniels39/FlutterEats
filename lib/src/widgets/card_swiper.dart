import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);


    /*static List imagesList = [
      'assets/card-swiper-test/pizza1.jpg',
      'assets/card-swiper-test/pizza2.jpg',
      'assets/card-swiper-test/pizza3.jpg',
      'assets/card-swiper-test/pizza4.jpg',
      'assets/card-swiper-test/pizza5.jpg',
    ];*/
    
    static List imagesList = [
      'https://images-na.ssl-images-amazon.com/images/I/A15-31Y3bRL.jpg',
      'https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2021/3/23/zqu2tz4snaevtqw6vv54/zelda-35-aniversario',
      'https://static.wikia.nocookie.net/zelda/images/2/26/Link_Artwork_LAR.png/revision/latest?cb=20191015020845&path-prefix=es',
      'https://i.blogs.es/51d459/zelda-vidaextra/450_1000.jpeg'
    ];

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 300,
      child: Swiper(
        itemWidth: 300,
        itemHeight: 300,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            imagesList[index],
            fit: BoxFit.fill,
          );
        },
        //indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: imagesList.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
        layout: SwiperLayout.STACK,
      ),
    );

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

    /*final size = MediaQuery.of(context).size;
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
    );*/
    
  }
}