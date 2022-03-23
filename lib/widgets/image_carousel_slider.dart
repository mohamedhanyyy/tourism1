import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/themes/app_sizes.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/widgets/sized_box.dart';

import '../utils/paths/images_path.dart';
class CarouselWithIndicatorDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }

  CarouselWithIndicatorDemo();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {


  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<Widget> changingItems=[
    Stack(
      children: [
        Container(
            width: Get.width,
            height: Get.height*3,
            child: Image(image:AssetImage(ConstantImages.mosque),fit: BoxFit.cover,)),
        Positioned(
          bottom: 0,
          child: Container(
            height: Get.height*.15,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.twentyPadding,vertical: AppPadding.twentyPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('One of the 7 wonders !',style: ConstantTextStyles.headlineWhiteTextStyle,),
                  tenHeightSizedBox,
                  Text('Book your tour now',style: ConstantTextStyles.hintWhiteTextStyle,),

                ],
              ),
            ),),
        )
      ],
    ),
    Stack(
      children: [
        Container(
            width: Get.width,
            height: Get.height*3,
            child: Image(image:AssetImage(ConstantImages.nature),fit: BoxFit.cover,)),
        Positioned(
          bottom: 0,
          child: Container(
            height: Get.height*.15,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.twentyPadding,vertical: AppPadding.twentyPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1',style: ConstantTextStyles.mediumFourteenWhitePoppinsTextStyle,),
                  Text('1'),

                ],
              ),
            ),),
        )
      ],
    ),
    Container(
        width: Get.width,
        child: Image(image:AssetImage(ConstantImages.factory),fit: BoxFit.cover,)),


  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
         items: changingItems,
         carouselController: _controller,
         options: CarouselOptions(
           initialPage: 0,
             height: Get.height*.3,
             viewportFraction: 1.0 ,
             autoPlay: true,
             enlargeCenterPage: false,
             onPageChanged: (index, reason) {
               setState(() {
                 _current = index;
               });
             }),
          ),
        Positioned(
          bottom: 15,
          // 36 is the width of the containers which are the three indicator
          left: Get.width/2-36,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: changingItems.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.white)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );

  }
}
