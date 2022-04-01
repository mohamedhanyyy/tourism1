import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/destination/controller/destination_controller.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/icons_path.dart';
import 'package:tourism1/utils/paths/images_path.dart';

import '../../../routes/routes.dart';
import '../../../widgets/common_widgets/sized_box.dart';

class DestinationView extends GetView<DestinationController> {
  const DestinationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView(
        children: [
          const Text(
            'Tourism Categories',
            style: ConstantTextStyles.mediumSixteenBlackPoppinsTextStyle,
          ),
          Image.asset(
            ConstantImages.sea,
            fit: BoxFit.fill,
            width: Get.width,
            height: 166,
          ),
          twentyHeightSizedBox,
          Card(
            elevation: 3,
            child: ExpansionTile(
                childrenPadding: const EdgeInsets.all(10),
                title: const Text(
                  'Tourist Attractions',
                  style: ConstantTextStyles.semiBoldEighteenPoppinsTextStyle,
                ),
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Farms and factories',
                          style:
                              ConstantTextStyles.regularSixteenPoppinsTextStyle,
                        ),
                        SvgPicture.asset(ConstantIcons.arrow),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    child: Expanded(
                      child: Divider(
                        color: ColorConstants.lightGreyColor,
                        thickness: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Stable horses',
                          style:
                              ConstantTextStyles.regularSixteenPoppinsTextStyle,
                        ),
                        SvgPicture.asset(ConstantIcons.arrow),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    child: Expanded(
                      child: Divider(
                        color: ColorConstants.lightGreyColor,
                        thickness: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'National Museums',
                          style:
                              ConstantTextStyles.regularSixteenPoppinsTextStyle,
                        ),
                        SvgPicture.asset(ConstantIcons.arrow),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    child: Expanded(
                      child: Divider(
                        color: ColorConstants.lightGreyColor,
                        thickness: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Zoos',
                          style:
                              ConstantTextStyles.regularSixteenPoppinsTextStyle,
                        ),
                        SvgPicture.asset(ConstantIcons.arrow),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    child: Expanded(
                      child: Divider(
                        color: ColorConstants.lightGreyColor,
                        thickness: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Water parks',
                          style:
                              ConstantTextStyles.regularSixteenPoppinsTextStyle,
                        ),
                        SvgPicture.asset(ConstantIcons.arrow),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    child: Expanded(
                      child: Divider(
                        color: ColorConstants.lightGreyColor,
                        thickness: 1,
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(height: 20),
          Card(
            elevation: 3,
            child: Column(
              children: [
                Image.asset(
                  ConstantImages.mosque,
                  fit: BoxFit.fill,
                  width: Get.width,
                  height: 166,
                ),
                twentyHeightSizedBox,
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Religious landmarks',
                        style:
                            ConstantTextStyles.semiBoldEighteenPoppinsTextStyle,
                      ),
                      SizedBox(
                        height: 40,
                        width: 116,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: ColorConstants.greenColor),
                            onPressed: () {
                              Get.toNamed(Routes.farmsAndFactories);
                            },
                            child: const Text('Check Posts')),
                      )
                    ],
                  ),
                ),
                twentyHeightSizedBox,
              ],
            ),
          ),
          twentyHeightSizedBox,
          Card(
            elevation: 3,
            child: Column(
              children: [
                Image.asset(
                  ConstantImages.camel,
                  fit: BoxFit.fill,
                  width: Get.width,
                  height: 166,
                ),
                twentyHeightSizedBox,
                ExpansionTile(
                    childrenPadding: const EdgeInsets.all(10),
                    title: const Text(
                      'Archaeological sites',
                      style:
                          ConstantTextStyles.semiBoldEighteenPoppinsTextStyle,
                    ),
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'National Museums',
                              style: ConstantTextStyles
                                  .regularSixteenPoppinsTextStyle,
                            ),
                            SvgPicture.asset(ConstantIcons.arrow),
                          ],
                        ),
                      ),
                      tenHeightSizedBox,
                    ]),
                twentyHeightSizedBox,
              ],
            ),
          ),
          twentyHeightSizedBox,
          Card(
            elevation: 3,
            child: Column(
              children: [
                Image.asset(
                  ConstantImages.nature,
                  fit: BoxFit.fill,
                  width: Get.width,
                  height: Get.height * 0.2,
                ),
                twentyHeightSizedBox,
                ExpansionTile(
                    childrenPadding: const EdgeInsets.all(10),
                    title: const Text(
                      'public gardens',
                      style:
                          ConstantTextStyles.semiBoldEighteenPoppinsTextStyle,
                    ),
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Stable horses',
                              style: ConstantTextStyles
                                  .regularSixteenPoppinsTextStyle,
                            ),
                            SvgPicture.asset(ConstantIcons.arrow),
                          ],
                        ),
                      ),
                      tenHeightSizedBox,
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Zoos',
                              style: ConstantTextStyles
                                  .regularSixteenPoppinsTextStyle,
                            ),
                            SvgPicture.asset(ConstantIcons.arrow),
                          ],
                        ),
                      ),
                      tenHeightSizedBox,
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Water parks',
                              style: ConstantTextStyles
                                  .regularSixteenPoppinsTextStyle,
                            ),
                            SvgPicture.asset(ConstantIcons.arrow),
                          ],
                        ),
                      ),
                      tenHeightSizedBox,
                    ]),
                twentyHeightSizedBox,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
