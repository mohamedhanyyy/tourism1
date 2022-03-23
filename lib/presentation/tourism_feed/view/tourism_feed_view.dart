import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/themes/app_sizes.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/images_path.dart';
import 'package:tourism1/widgets/cutsom_text_field.dart';
import 'package:tourism1/widgets/sized_box.dart';

import '../../../utils/paths/icons_path.dart';
import '../../../widgets/image_carousel_slider.dart';
import '../../../widgets/post_text_field.dart';

class TourismFeedView extends StatefulWidget {
  @override
  _TourismFeedViewState createState() => _TourismFeedViewState();
}

class _TourismFeedViewState extends State<TourismFeedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.veryLightGreyColor,
      appBar: AppBar(
        title: Text('Tourism Feed',
        style: ConstantTextStyles.headLineTextStyle,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: ColorConstants.greenColor,))
        ],
      ),
      body: Column(
       children: [
         twentyHeightSizedBox,
         // post Container
         Container(
           height: Get.height*.3,
           decoration: const BoxDecoration(
             color: ColorConstants.whiteColor
           ),
           child: Padding(
             padding: EdgeInsets.symmetric(vertical: AppPadding.fifteenPadding,horizontal:  AppPadding.fifteenPadding),
             child: Column(
               children: [
                 Container(
                   height:Get.height*.15,
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
                         tenWidthSizedBox,
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
                 Expanded(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                            SvgPicture.asset(ConstantIcons.alarm,color: ColorConstants.mediumGreyColor,),
                            fiveWidthSizedBox,
                            SvgPicture.asset(ConstantIcons.alarm,color: ColorConstants.mediumGreyColor,),
                           fiveWidthSizedBox,
                            SvgPicture.asset(ConstantIcons.alarm,color: ColorConstants.mediumGreyColor,),
                           ]
                       ),

                       ElevatedButton(onPressed: (){}, child: Text('Post Details')),
                     ],
                   ),
                 )
               ],
             ),
           ),
         ),
         twentyHeightSizedBox,
         // CarouselSlider(
         //     items: changingItems,
         //     options: CarouselOptions(
         //
         //         height: Get.height*.30,
         //         initialPage: 0,
         //         reverse: false,
         //         viewportFraction: 1.0,
         //         enableInfiniteScroll: true,
         //         autoPlay: true,
         //         autoPlayInterval: Duration(seconds: 3),
         //         autoPlayAnimationDuration: Duration(seconds: 1),
         //         autoPlayCurve: Curves.decelerate,
         //         scrollDirection: Axis.horizontal
         //     )
         // )
         CarouselWithIndicatorDemo()
       ],
      ),
    );
  }
}
