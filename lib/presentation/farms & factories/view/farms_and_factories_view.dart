import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/destination%20details/view/destination_details_view.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/icons_path.dart';
import 'package:tourism1/widgets/cutsom_text_field.dart';
import 'package:tourism1/widgets/sized_box.dart';

import '../../../themes/app_sizes.dart';
import '../controller/farms_and_factories_controller.dart';

class FarmsAndFactoriesView extends GetView<FarmsAndFactoriesController> {
  FarmsAndFactoriesView({Key? key}) : super(key: key);

  @override
  final FarmsAndFactoriesController controller =
      Get.find<FarmsAndFactoriesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Farms and factories',
          style: ConstantTextStyles.headLineTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.tenPadding),
        child: ListView(
          children: [
            CustomTextField(
              controller: controller.farmSearchController,
              suffixIcon: const Icon(Icons.search),
              hintText: null,
              labelText: 'Search by city name',
              radius: 5,
              fillColor: ColorConstants.lightGreyColor,
              prefixIcon: null,
            ),
            twentyHeightSizedBox,
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.tenPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: Get.width * 0.4,
                              height: Get.height * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: AppBorders.fiveBorderRadius,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(controller
                                      .farmAndFactoryList[index].image!),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              child: Card(
                                color: ColorConstants.lightGreen,
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      AppPadding.eightPadding),
                                  child: Text(
                                    controller.farmAndFactoryList[index].name!,
                                    style: ConstantTextStyles
                                        .mediumFourteenWhitePoppinsTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        tenHeightSizedBox,
                        Row(
                          children: [
                            const Icon(
                              Icons.location_pin,
                              color: ColorConstants.greenColor,
                            ),
                            fiveWidthSizedBox,
                            Text(
                              controller.farmAndFactoryList[index].location!,
                              style: ConstantTextStyles
                                  .mediumFourteenBlackPoppinsTextStyle,
                            ),
                          ],
                        ),
                        tenHeightSizedBox,
                        InkWell(
                          onTap: () {
                            Get.to(DestinationDetailsView());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Know Details',
                                  style: ConstantTextStyles
                                      .semiBoldFourteenGreenPoppinsTextStyle),
                              fiveWidthSizedBox,
                              SvgPicture.asset(ConstantIcons.arrow),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: controller.farmAndFactoryList.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
