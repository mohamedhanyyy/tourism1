import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/tourism_feed/controller/tourism_feed_controller.dart';
import 'package:tourism1/themes/app_sizes.dart';
import 'package:tourism1/themes/styles.dart';

import 'common_widgets/sized_box.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }

  CarouselWithIndicatorDemo({Key? key}) : super(key: key);
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
   final controller = Get.put(TourismFeedController());

//adding dummy line and subline with image to the stack widget having theese three items
  List<Widget> stackPicsItems() {
    List<Widget> list = [];
    controller.dummyListDataCarousle.forEach((item) {
      list.add(stackOfImage(
        image: item['image name'],
        adLine: item['ad line'],
        adSub: item['ad subline'],
      ));
    });
    return list;
  }

//fixed widget of carouel ITEM to put image and lines into it through controllers
  Stack stackOfImage({
    required String adLine,
    required String adSub,
    required String image,
  }) {
    return Stack(
      children: [
        Container(
            width: Get.width,
            height: Get.height * .25,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 0,
          child: Container(
              height: Get.height * .12,
              width: Get.width,
              decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.twentyPadding,
                      vertical: AppPadding.twentyPadding),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          adLine,
                          style: ConstantTextStyles.headlineWhiteTextStyle,
                        ),
                        tenHeightSizedBox,
                        Flexible(
                            child: Text(
                          adSub,
                          style: ConstantTextStyles.hintWhiteTextStyle,
                        )),
                      ],
                    ),
                  ))),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: stackPicsItems(),
          carouselController: _controller,
          options: CarouselOptions(
              initialPage: 0,
              height: Get.height * .25,
              viewportFraction: 1.0,
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

          // (12*changingItems.length) is the width of the containers which are the  indicators  according to list length
          left: Get.width / 2 - (12 * controller.dummyListDataCarousle.length),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: stackPicsItems().asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
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
