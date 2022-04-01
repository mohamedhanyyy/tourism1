import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/tourism_feed/controller/tourism_feed_controller.dart';
import 'package:tourism1/themes/app_sizes.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/images_path.dart';
import 'package:tourism1/widgets/post_widget.dart';
import '../../../routes/routes.dart';
import '../../../utils/paths/icons_path.dart';
import '../../../widgets/common_widgets/sized_box.dart';
import '../../../widgets/image_carousel_slider.dart';
import '../../../widgets/post_text_field.dart';

class TourismFeedView extends GetView<TourismFeedController> {
  @override
  final controller = Get.put(TourismFeedController());

  TourismFeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          // post Container
          Container(
            //height: Get.height*.25,
            decoration: const BoxDecoration(color: ColorConstants.whiteColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  // post text field
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: ColorConstants.veryLightGreyColor,
                        borderRadius: AppBorders.tenBorderRadius),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(ConstantImages.profile),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: PostTextField(
                              hintStyle:
                                  ConstantTextStyles.hintLightGrayTextStyle,
                              fillColor: Colors.transparent,
                              border: false,
                              radius: 15.0,
                              hintText: 'Enter destination details here ',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: ColorConstants.lightGreyColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              ConstantIcons.galleryGrey,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            SvgPicture.asset(
                              ConstantIcons.videoCamGrey,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            SvgPicture.asset(
                              ConstantIcons.locationGrey,
                            ),
                          ]),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ColorConstants.greenColor,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.postDestination);
                            },
                            child: const Text('Post Destination')),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const CarouselWithIndicatorDemo(),
          twentyHeightSizedBox,
          // categories list
          Container(
            height: 55,
            margin: const EdgeInsetsDirectional.only(start: 10),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5, top: 7),
                  decoration: const BoxDecoration(
                    borderRadius: AppBorders.tenBorderRadius,
                    color: Colors.white,
                  ),
                  width: 135,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      const SizedBox(width: 5),
                      SvgPicture.asset(
                        controller.categories[0].values.single,
                        color: ColorConstants.greenColor,
                        height: 40,
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                          child: const Text(
                        'Tourist Attractions',
                        style: ConstantTextStyles
                            .mediumFourteenBlackPoppinsTextStyle,
                      ))
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.only(left: 5, top: 7),
                  decoration: const BoxDecoration(
                    borderRadius: AppBorders.tenBorderRadius,
                    color: Colors.white,
                  ),
                  width: 140,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      const SizedBox(width: 5),
                      SvgPicture.asset(
                        controller.categories[1].values.single,
                        color: ColorConstants.greenColor,
                        height: 40,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                          child: Column(
                        children: const [
                          Text(
                            'Religious landmarks',
                            style: ConstantTextStyles
                                .mediumFourteenBlackPoppinsTextStyle,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.only(left: 5, top: 7),
                  decoration: const BoxDecoration(
                    borderRadius: AppBorders.tenBorderRadius,
                    color: Colors.white,
                  ),
                  width: 170,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      const SizedBox(width: 5),
                      SvgPicture.asset(
                        controller.categories[2].values.single,
                        color: ColorConstants.greenColor,
                        height: 40,
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                          child: Text(
                        'Archaeological sites',
                        style: ConstantTextStyles
                            .mediumFourteenBlackPoppinsTextStyle,
                      ))
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.only(left: 5, top: 7),
                  decoration: const BoxDecoration(
                    borderRadius: AppBorders.tenBorderRadius,
                    color: Colors.white,
                  ),
                  width: 130,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      const SizedBox(width: 5),
                      SvgPicture.asset(
                        controller.categories[3].values.single,
                        color: ColorConstants.greenColor,
                        height: 40,
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                          child: Text(
                        'Public Gardens',
                        style: ConstantTextStyles
                            .mediumFourteenBlackPoppinsTextStyle,
                      ))
                    ],
                  ),
                ),
                const SizedBox(width: 5),
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),

          const SizedBox(height: 20),
          // city filter
          Container(
            height: Get.height * .08,
            margin: const EdgeInsetsDirectional.only(start: 15, end: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Post Filter',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: ConstantTextStyles.mediumSixteenDefaultTextStyle,
                ),
                tenWidthSizedBox,
                Expanded(
                  child: Container(
                    height: Get.height * .07,
                    //width: Get.width,
                    decoration: const BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: AppBorders.tenBorderRadius,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.only(start: 5),
                          child: Text(
                            'City: ',
                            style: ConstantTextStyles
                                .mediumSixteenDefaultTextStyle,
                          ),
                        ),
                        fiveWidthSizedBox,
                        Expanded(
                          child: Container(
                            height: Get.height * .04,
                            decoration: const BoxDecoration(
                              color: ColorConstants.lightGreyColor,
                              borderRadius: AppBorders.tenBorderRadius,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(start: 5),
                                  child: Text(
                                    'Dubai',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: ConstantTextStyles
                                        .regularSixteenDefaultTextStyle,
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_outlined)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          // List of Posts
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) =>
                  // single post
                  PostWidget(
                      isComment: false,
                      dummyLocation: controller.dummyLocation,
                      dummyPostDescription: controller.dummyPostDescription,
                      dummyUserName: controller.dummyUserName,
                      dummyUserImage: controller.dummyUserImage,
                      dummyPostImage: controller.dummyPostImage)),
        ],
      ),
    );
  }
}
