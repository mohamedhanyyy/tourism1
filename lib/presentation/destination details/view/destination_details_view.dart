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
            tenHeightSizedBox,
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
                  tenHeightSizedBox,
                  SizedBox(
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
                              padding:
                                  const EdgeInsets.all(8),
                              child: Card(
                                elevation: 0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: AppBorders.fiveBorderRadius,
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
                                        width: 80,
                                        child: Divider(
                                          color: ColorConstants.greenColor,
                                          thickness: 3,
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
                  tenHeightSizedBox,
                ],
              ),
            ),
            tenHeightSizedBox,
            const Text('East Side of Jeddah City: Hiba Farm',
                style: ConstantTextStyles.semiBoldSixteenPoppinsTextStyle),
            eightHeightSizedBox,
            const Text(
              'A place east lorem ipsum',
              style: ConstantTextStyles.mediumFourteenBlackPoppinsTextStyle,
            ),
            twentyFiveHeightSizedBox,
            const Text(
              'About Place',
              style: ConstantTextStyles.mediumSixteenBlackPoppinsTextStyle,
            ),
            eightHeightSizedBox,
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
              style: ConstantTextStyles.regularSixteenPoppinsTextStyle,
            ),
            twentyHeightSizedBox,
            const Text(
              'Activities',
              style: ConstantTextStyles.mediumSixteenBlackPoppinsTextStyle,
            ),
            tenHeightSizedBox,
            SizedBox(
              height: 40,
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          child: Image.asset(ConstantImages.camp1),
                          borderRadius: AppBorders.fiveBorderRadius,
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          child: Image.asset(ConstantImages.camp2),
                          borderRadius: AppBorders.fiveBorderRadius,
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          child: Image.asset(ConstantImages.nature1),
                          borderRadius: AppBorders.fiveBorderRadius,
                        ),
                      ),
                    ],
                  ),
                  tenHeightSizedBox,
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,  eiusmod tempor incididunt ut labore et dolore magna aliqua',
                    style:
                        ConstantTextStyles.regularFourteenBlackPoppinsTextStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
