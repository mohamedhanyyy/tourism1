import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/destination%20details/controller/destination_details_controller.dart';
import 'package:tourism1/themes/app_sizes.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/images_path.dart';

import '../../../themes/colors.dart';
import '../../../widgets/common_widgets/leading_appBar.dart';
import '../../../widgets/common_widgets/sized_box.dart';

class DestinationDetailsView extends GetView<DestinationDetailsController> {
  DestinationDetailsView({Key? key}) : super(key: key);
  @override
  final controller = Get.find<DestinationDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CommonLeadingAppBar(),
        title: const Text(
          'Destination Details',
          style: ConstantTextStyles.headLineTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Card(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 193,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ConstantImages.farm2),
                          fit: BoxFit.fill),
                      borderRadius: AppBorders.fiveBorderRadius,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: SizedBox(
                      width: double.infinity,
                      height: 105,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return Obx(
                            () => InkWell(
                              onTap: () {
                                controller.farmsToggleIndex.value = index;
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 9),
                                child: Card(
                                  elevation: 0,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            AppBorders.fiveBorderRadius,
                                        child: Image.asset(
                                          ConstantImages.nature1,
                                          height: 72,
                                          width: 72,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      if (controller.farmsToggleIndex.value ==
                                          index)
                                        const SizedBox(
                                          height: 1,
                                          width: 62,
                                          child: Divider(
                                            color: ColorConstants.greenColor,
                                            thickness: 2,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text('East Side of Jeddah City: Hiba Farm',
                style: ConstantTextStyles.semiBoldSixteenPoppinsTextStyle),
            const SizedBox(height: 8),
            const Text(
              'A place east lorem ipsum',
              style: ConstantTextStyles.mediumFourteenBlackPoppinsTextStyle,
            ),
            const SizedBox(height: 25),
            const Text(
              'About Place',
              style: ConstantTextStyles.mediumSixteenBlackPoppinsTextStyle,
            ),
            eightHeightSizedBox,
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
              style: ConstantTextStyles.regularSixteenPoppinsTextStyle,
            ),
            const SizedBox(height: 20),
            const Text(
              'Activities',
              style: ConstantTextStyles.mediumSixteenBlackPoppinsTextStyle,
            ),
            tenHeightSizedBox,
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Obx(
                      () => ElevatedButton(
                        onPressed: () {
                          controller.toggleActivityIndex(index);
                        },
                        child: Text(controller.activityNamesList[index]),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: index == controller.activityToggleIndex.value
                              ? ColorConstants.greenColor
                              : ColorConstants.lightGreen,
                        ),
                      ),
                    ),
                  );
                },
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.activityNamesList.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            tenHeightSizedBox,
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Column(
                  children: [
                    const SizedBox(height: 9),
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            child: Image.asset(ConstantImages.camp1),
                            borderRadius: AppBorders.fiveBorderRadius,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ClipRRect(
                            child: Image.asset(ConstantImages.camp2),
                            borderRadius: AppBorders.fiveBorderRadius,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ClipRRect(
                            child: Image.asset(ConstantImages.nature1),
                            borderRadius: AppBorders.fiveBorderRadius,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(

                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,  eiusmod tempor incididunt ut labore et dolore magna aliqua',
                      style: ConstantTextStyles
                          .regularFourteenBlackPoppinsTextStyle,
                      overflow: TextOverflow.ellipsis,
                       maxLines: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
