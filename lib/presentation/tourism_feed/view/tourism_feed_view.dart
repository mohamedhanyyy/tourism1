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
    return  Container(
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
                                width: 10,
                              ),
                              SvgPicture.asset(
                                ConstantIcons.videoCamGrey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                ConstantIcons.locationGrey,
                              ),
                            ]),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstants.greenColor,
                          ),
                            onPressed: () {
                              Get.toNamed(Routes.postDestination);
                            },
                            child: const Text('Post Destination')),
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

              margin: const EdgeInsetsDirectional.only(start: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.categories.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.only(left: 5),

                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: const BoxDecoration(
                    borderRadius: AppBorders.tenBorderRadius,
                    color: Colors.white,
                  ),

                  //  height: 70,
                  width: 160,
                  child: Row(
                    children: [
                      fiveWidthSizedBox,
                      SvgPicture.asset(
                        controller.categories[index].values.single,
                        color: ColorConstants.greenColor,
                        height: 50,
                      ),
                      fiveWidthSizedBox,
                      Expanded(
                        flex: 5,
                        child: Text(
                          controller.categories[index].keys.single,
                          style: ConstantTextStyles.mediumSixteenDefaultTextStyle,
                      overflow: TextOverflow.ellipsis,
                          maxLines: 2,
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
