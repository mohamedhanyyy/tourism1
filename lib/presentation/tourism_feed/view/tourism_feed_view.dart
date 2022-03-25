import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/tourism_favourite/view/tourism_favourite_view.dart';
import 'package:tourism1/presentation/tourism_feed/controller/tourism_feed_controller.dart';
import 'package:tourism1/themes/app_sizes.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/images_path.dart';
import 'package:tourism1/widgets/post_widget.dart';
import '../../../routes/routes.dart';
import '../../../utils/paths/icons_path.dart';
import '../../../widgets/common widgets/sized_box.dart';
import '../../../widgets/image_carousel_slider.dart';
import '../../../widgets/post_text_field.dart';

class TourismFeedView extends StatefulWidget {
  @override
  _TourismFeedViewState createState() => _TourismFeedViewState();
}

class _TourismFeedViewState extends State<TourismFeedView> {
  final controller = Get.find<TourismFeedController>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: ColorConstants.lightGreyColor,
          shape: BoxShape.circle
        ),
        child: Container(
          margin:  EdgeInsets.only(bottom: 15,left: 5,right: 5),
         decoration: BoxDecoration(

           color: Colors.white,
           shape: BoxShape.circle
         ),
          child: Padding(padding: EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstants.greyColor,
              shape: BoxShape.circle
            ),
            child: Icon(Icons.add),
          ),
          ),
        ),
      ),

      backgroundColor: ColorConstants.veryLightGreyColor,
      appBar: AppBar(
        title: Text('Tourism Feed',
        style: ConstantTextStyles.mediumHeadlineBlackPoppinsTextStyle,
        ),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed(Routes.tourismFavourite);
          }, icon: Icon(Icons.notifications,color: ColorConstants.greenColor,))
        ],
      ),
      body: ListView(
        children: [
          twentyHeightSizedBox,
          // post Container
          Container(
            //height: Get.height*.25,
            decoration: const BoxDecoration(
                color: ColorConstants.whiteColor
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: AppPadding.fifteenPadding,horizontal:  AppPadding.fifteenPadding),
              child: Column(
                children: [
                  // post text field
                  Container(
                    height:Get.height*.1,
                    decoration: BoxDecoration(
                        color: ColorConstants.veryLightGreyColor,
                        borderRadius: AppBorders.tenBorderRadius
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(ConstantImages.sea),
                          ),
                          tenHeightSizedBox,
                          Expanded(
                            child: PostTextField(
                              hintStyle:ConstantTextStyles.hintLightGrayTextStyle,
                              fillColor: Colors.transparent,
                              border: false,
                              radius:15.0 ,
                              hintText: 'Enter destination details here ',

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  tenHeightSizedBox,
                  Divider(color: ColorConstants.lightGreyColor,),
                  tenHeightSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,

                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(ConstantIcons.galleryGrey,),
                            fiveWidthSizedBox,
                            SvgPicture.asset(ConstantIcons.videoCamGrey,),
                            fiveWidthSizedBox,
                            SvgPicture.asset(ConstantIcons.locationGrey,),
                          ]
                      ),

                      ElevatedButton(onPressed: (){}, child: Text('Post Details')),
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
            height: Get.height*.08,
            margin: EdgeInsetsDirectional.only(start: AppPadding.tenPadding),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.categories.length,
                itemBuilder: (context,index)=>Container(
                  margin: EdgeInsets.symmetric(horizontal: AppPadding.fivePadding),
                  decoration: BoxDecoration(
                    borderRadius: AppBorders.tenBorderRadius,
                    color: Colors.white,
                  ),

                //  height: 70,
                  width: 150,
                  child: Row(
                    children: [
                      fiveWidthSizedBox,
                      Expanded(
                        flex:2,
                          child: SvgPicture.asset('${controller.categories[index].values.single}'
                        ,color: ColorConstants.greenColor,height: 50,)),
                      fiveWidthSizedBox,
                      Expanded(
                        flex: 5,
                        child: Text('${controller.categories[index].keys.single}',
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
            height: Get.height*.08,
            margin: EdgeInsetsDirectional.only(start: AppPadding.fifteenPadding,end:AppPadding.fifteenPadding ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Post Filter',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: ConstantTextStyles.mediumSixteenDefaultTextStyle,
                ),
                tenWidthSizedBox,
                Expanded(
                  child: Container(
                    height: Get.height*.07,
                    //width: Get.width,
                    decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: AppBorders.tenBorderRadius,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: AppPadding.fivePadding),
                          child: Text('City: ',
                            style: ConstantTextStyles.mediumSixteenDefaultTextStyle,
                          ),
                        ),
                        fiveWidthSizedBox,
                    Expanded(
                      child: Container(
                        height: Get.height*.04,
                        decoration: BoxDecoration(
                          color: ColorConstants.lightGreyColor,
                          borderRadius: AppBorders.tenBorderRadius,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: AppPadding.fivePadding),
                              child: Text('Dubai',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: ConstantTextStyles.regularSixteenDefaultTextStyle,
                              ),
                            ),
                            //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_outlined)),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                      ),
                    ),
                        fifteenWidthSizedBox,
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
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
              itemBuilder: (context,index)=>
              // single post
            PostWidget(

              isComment: false,
                dummyLocation: controller.dummyLocation,
                dummyPostDescription:  controller.dummyPostDescription,
                dummyUserName:  controller.dummyUserName,
                dummyUserImage:  controller.dummyUserImage,
                dummyPostImage:  controller.dummyPostImage)


          ),
        ],
      ),
    );
  }
  // post container
  /*
   Padding(
                         padding: const EdgeInsets.symmetric(vertical: AppPadding.fifteenPadding),
                         child: Container(
                    // height: Get.height*.85,
                     decoration: BoxDecoration(
                         color: ColorConstants.whiteColor
                     ),
                     child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           // image of the user & Type & name & uploading time
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                             child: Row(
                               children: [
                                 CircleAvatar(backgroundImage: AssetImage(ConstantImages.factory),),
                                 fiveWidthSizedBox,
                                 Expanded(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                      RichText(

                                        text: TextSpan(text: 'Ahmed Jalal ',
                                        style: ConstantTextStyles.boldSixteenDefaultTextStyle,
                                        children: [
                                          TextSpan(text: 'Uploaded ',
                                            style: ConstantTextStyles.hintLightGrayTextStyle
                                          ),
                                          TextSpan(text: 'photos in  ',
                                              style: ConstantTextStyles.regularFourteenDefaultTextStyle
                                          ),
                                          TextSpan(text: 'Dubai ',

                                              style: ConstantTextStyles.semiBoldFourteenGreenDefaultTextStyle
                                          )
                                        ]
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                       fiveHeightSizedBox,
                                       Text('Tour Guide . 2 minutes ago',
                                       style: ConstantTextStyles.hintLightGrayTextStyle,
                                       )
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           ),
                           fifteenHeightSizedBox,
                           //Image or Video of post
                           Container(
                             height: Get.height*.3,
                             width: Get.width,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                 image: AssetImage(ConstantImages.farm2),
                                 fit: BoxFit.fill
                               ),
                             ),

                           ),
                           tenHeightSizedBox,
                           //Like Comment and share icons
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 15.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   child: Row(
                                     children: [
                                      SvgPicture.asset(ConstantIcons.likeBlack),
                                       fifteenWidthSizedBox,
                                      SvgPicture.asset(ConstantIcons.commentBlack),
                                     ],
                                   ),
                                 ),
                                 Container(
                                   child: Icon(Icons.share_outlined,color: ColorConstants.mediumGreyColor),

                                 ),


                               ],
                             ),
                           ),
                           fifteenHeightSizedBox,
                           // Likes Number
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
                             child: Text('233 Likes',
                               style: ConstantTextStyles.regularFourteenDefaultTextStyle,
                             ),
                           ),
                           fifteenHeightSizedBox,
                           // Name of the user
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
                             child: Text('Ahmed Jalal',
                               style: ConstantTextStyles.boldSixteenDefaultTextStyle,
                             ),
                           ),
                           tenHeightSizedBox,
                           // address and Rating of the user
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
                             child: Row(
                               children: [
                                 SvgPicture.asset(ConstantIcons.locationGrey,
                                   height: 24.0,
                                   width: 24.0,
                                   color: ColorConstants.greenColor,),
                                 fiveWidthSizedBox,
                                 Flexible(
                                   child: Text(controller.dummyLocation,
                                       maxLines: 1,
                                     overflow: TextOverflow.ellipsis,
                                     style:ConstantTextStyles.normalFourteenGreenDefaultTextStyle.copyWith(
                                       decoration: TextDecoration.underline,
                                     )
                                   ),
                                 ),
                                fiftyWidthSizedBox,
                                 SvgPicture.asset(ConstantIcons.ratingGreen,height: 24,width: 24,),

                               ],
                             ),
                           ),
                           twentyHeightSizedBox,
                           // Name of the place
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
                             child: Text('Sahara Desert',
                               style: ConstantTextStyles.boldTwelvePoppinsTextStyle,
                             ),
                           ),

                           // description of post
                           tenHeightSizedBox,
                           // Likes Number
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
                             child: Text(controller.dummyPostDescription,
                               maxLines: 4,
                               overflow: TextOverflow.ellipsis,
                               style: ConstantTextStyles.regularFourteenDefaultTextStyle,
                             ),
                           ),
                           tenHeightSizedBox,
                           // Time of the description
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
                             child: Text('1h ago',
                               style: ConstantTextStyles.hintLightGrayTextStyle,
                             ),
                           ),
                           tenHeightSizedBox,
                           // Row of comment and view all comment
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('Comments',
                                 style: ConstantTextStyles.semiBoldSixteenDefaultTextStyle,
                                 ),
                                 Text('view all 60 comments',
                                     maxLines: 1,
                                     overflow: TextOverflow.ellipsis,
                                     style:ConstantTextStyles.semiBoldSixteenGreenDefaultTextStyle.copyWith(
                                       color: ColorConstants.greenColor.withOpacity(.5)
                                     )
                                 ),
                               ],
                             ),
                           ),
                           tenHeightSizedBox,
                           //comment with user name and image
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                                     CircleAvatar(backgroundImage: AssetImage(ConstantImages.factory),),

                                     fiveWidthSizedBox,
                                     Expanded(
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           RichText(

                                             text: TextSpan(text: 'Ahmed Jalal ',
                                                 style: ConstantTextStyles.mediumFourteenBlackDefaultTextStyle,
                                                 children: [

                                                   TextSpan(text: controller.dummyPostDescription,
                                                       style: ConstantTextStyles.regularFourteenDefaultTextStyle
                                                   ),

                                                 ]
                                             ),
                                             maxLines: 2,
                                             overflow: TextOverflow.ellipsis,
                                           ),

                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                                 fiveHeightSizedBox,
                                 Padding(
                                   padding: const EdgeInsetsDirectional.only(start: 45),
                                   child: Text('1h ago',
                                     style: ConstantTextStyles.hintLightGrayTextStyle,

                                   ),
                                 )
                               ],
                             ),
                           ),
                           tenHeightSizedBox,
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                                     CircleAvatar(backgroundImage: AssetImage(ConstantImages.factory),),

                                     fiveWidthSizedBox,
                                     Expanded(
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           RichText(

                                             text: TextSpan(text: 'Ahmed Jalal ',
                                                 style: ConstantTextStyles.mediumFourteenBlackDefaultTextStyle,
                                                 children: [

                                                   TextSpan(text: controller.dummyPostDescription,
                                                       style: ConstantTextStyles.regularFourteenDefaultTextStyle
                                                   ),

                                                 ]
                                             ),
                                             maxLines: 2,
                                             overflow: TextOverflow.ellipsis,
                                           ),

                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                                 fiveHeightSizedBox,
                                 Padding(
                                   padding: const EdgeInsetsDirectional.only(start: 45),
                                   child: Text('1h ago',
                                     style: ConstantTextStyles.hintLightGrayTextStyle,

                                   ),
                                 )
                               ],
                             ),
                           ),
                         ],
                     ),
                   ),
                       ),
   */
}
