import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/icons_path.dart';
import 'package:tourism1/utils/paths/images_path.dart';
import 'package:tourism1/widgets/common%20widgets/cutsom_text_field.dart';

class MapView extends GetView {
  @override
  TextEditingController controller = TextEditingController();
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Map',
          style: ConstantTextStyles.headLineTextStyle,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(ConstantIcons.alarm)),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 56,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomTextField(
                radius: 5,
                suffixIcon: const Icon(Icons.search),
                labelText: 'Search for cities, destinations...',
                controller: controller,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: Get.height * 0.4,
            width: double.infinity,
            child: const GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return FittedBox(
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 190,
                            height: 133,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(ConstantImages.mosque),
                              ),
                            ),
                          ),
                          Container(
                            width: 190,
                            height: 133,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image:  DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(ConstantImages.container),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 7,
                            left: 7,
                            child: Text(
                              'Heritage Landmarks',
                              style: ConstantTextStyles
                                  .mediumFourteenWhitePoppinsTextStyle,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 5,
                            child: Card(
                              color: ColorConstants.whiteColor,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    const Text(
                                      '20 C',
                                      style: ConstantTextStyles
                                          .semiBoldFourteenGreenPoppinsTextStyle,
                                    ),
                                    const SizedBox(width: 3),
                                    SvgPicture.asset(ConstantIcons.temp)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Jeddata',
                                style: ConstantTextStyles
                                    .semiBoldSixteenPoppinsTextStyle),
                            const SizedBox(
                              // TODO error is here
                              width: 60,
                            ),
                            SvgPicture.asset(ConstantIcons.arrow),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 8,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
