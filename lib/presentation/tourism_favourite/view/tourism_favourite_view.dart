import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/images_path.dart';
import '../../../routes/routes.dart';
import '../../../widgets/common_widgets/sized_box.dart';
import '../controller/tourism_favourite_controller.dart';

class TourismFavouriteView extends GetView<TourismFavouriteController> {
  final controllerFavourite = Get.put(TourismFavouriteController());

  TourismFavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: GridView.builder(
          itemCount: 15,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: Get.height * .165,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15),
          itemBuilder: (context, index) => favouriteContainer()),
    );
  }

  Widget favouriteContainer() {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.favouritePost);
      },
      child: Stack(
        children: [
          Container(
            height: Get.height * .2,
            //  width: Get.width,
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
                  Colors.black,
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.3),
                ]),
                image: const DecorationImage(
                  image: AssetImage(ConstantImages.farm),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: Get.height * .2,
            //  width: Get.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black,
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.2),
                Colors.black.withOpacity(.1),
              ]),
            ),
          ),
          // child: Image(image:AssetImage(ConstantImages.sea),fit: BoxFit.cover,)),
          Positioned(
            bottom: 0,
            child: Container(
                height: Get.height * .12,
                width: Get.width,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 8, top: 25),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(controllerFavourite.dummyUserImage),
                          ),
                          tenWidthSizedBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                controllerFavourite.dummyUserName,
                                style:
                                    ConstantTextStyles.headlineWhiteTextStyle,
                              ),
                              tenHeightSizedBox,
                              const Text(
                                'Pyramids',
                                style: ConstantTextStyles
                                    .regularTwelveWhitePoppinsTextStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
