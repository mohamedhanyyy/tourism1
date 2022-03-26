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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.veryLightGreyColor,
      appBar: AppBar(
        title: const Text(
          'Tourism Feed',
          style: ConstantTextStyles.mediumHeadlineBlackPoppinsTextStyle,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.tourismFavourite);
              },
              icon: const Icon(
                Icons.notifications,
                color: ColorConstants.greenColor,
              ))
        ],
      ),
      body: ListView(
        children: [
          twentyHeightSizedBox,
          // post Container
          Container(
            //height: Get.height*.25,
            decoration: const BoxDecoration(color: ColorConstants.whiteColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.fifteenPadding,
                  horizontal: AppPadding.fifteenPadding),
              child: Column(
                children: [
                  // post text field
                  Container(
                    height: Get.height * .1,
                    decoration: const BoxDecoration(
                        color: ColorConstants.veryLightGreyColor,
                        borderRadius: AppBorders.tenBorderRadius),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(ConstantImages.profile),
                          ),
                          tenHeightSizedBox,
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

                  tenHeightSizedBox,
                  const Divider(
                    color: ColorConstants.lightGreyColor,
                  ),
                  tenHeightSizedBox,
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
                            fiveWidthSizedBox,
                            SvgPicture.asset(
                              ConstantIcons.videoCamGrey,
                            ),
                            fiveWidthSizedBox,
                            SvgPicture.asset(
                              ConstantIcons.locationGrey,
                            ),
                          ]),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Post Details')),
                    ],
                  )
                ],
              ),
            ),
          ),

          twentyHeightSizedBox,

          CarouselWithIndicatorDemo(),
          twentyHeightSizedBox,
          // categories list
          Container(
            height: Get.height * .08,
            margin:
                const EdgeInsetsDirectional.only(start: AppPadding.tenPadding),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.categories.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: AppPadding.fivePadding),
                decoration: const BoxDecoration(
                  borderRadius: AppBorders.tenBorderRadius,
                  color: Colors.white,
                ),

                //  height: 70,
                width: 150,
                child: Row(
                  children: [
                    fiveWidthSizedBox,
                    Expanded(
                      flex: 2,
                      child: SvgPicture.asset(
                        controller.categories[index].values.single,
                        color: ColorConstants.greenColor,
                        height: 50,
                      ),
                    ),
                    fiveWidthSizedBox,
                    Expanded(
                      flex: 5,
                      child: Text(
                        controller.categories[index].keys.single,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: ConstantTextStyles.mediumSixteenDefaultTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          twentyHeightSizedBox,
          // city filter
          Container(
            height: Get.height * .08,
            margin: const EdgeInsetsDirectional.only(
                start: AppPadding.fifteenPadding,
                end: AppPadding.fifteenPadding),
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
                          padding: EdgeInsetsDirectional.only(
                              start: AppPadding.fivePadding),
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
                                  padding: EdgeInsetsDirectional.only(
                                      start: AppPadding.fivePadding),
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
          twentyHeightSizedBox,
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
