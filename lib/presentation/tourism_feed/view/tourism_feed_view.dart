import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
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
  List<BottomNavigationBarItem> navBar=[
    BottomNavigationBarItem(icon: Icon(Icons.filter),label: 'Item1'),
    BottomNavigationBarItem(icon: Padding(
      padding: const EdgeInsetsDirectional.only(end: 30.0),
      child: Icon(Icons.filter),
    ),label: 'Item2'),
    BottomNavigationBarItem(icon: Icon(Icons.filter),label: 'Item3'),
    BottomNavigationBarItem(icon: Icon(Icons.filter),label: 'Item4'),
  ];
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
      bottomNavigationBar: BottomNavigationBar(
elevation: 20,

        selectedItemColor: ColorConstants.greenColor,
          unselectedItemColor: ColorConstants.greyColor,
          items:navBar ),
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
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
             shrinkWrap: true,
             children: [

               twentyHeightSizedBox,

               CarouselWithIndicatorDemo(),
               twentyHeightSizedBox,
               // categories list
               Container(
                 height: Get.height*.08,
                 margin: EdgeInsetsDirectional.only(start: AppPadding.tenPadding),
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 8,
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
                           Expanded(child: SvgPicture.asset(ConstantIcons.alarm,color: ColorConstants.greenColor,height: 50,)),
                           fiveWidthSizedBox,
                           Expanded(
                             flex: 2,
                             child: Text('Religious Activities',
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
                   itemBuilder: (context,index)=>Container(
                     height: Get.height*.7,
                     decoration: BoxDecoration(
                       color: ColorConstants.whiteColor
                     ),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
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
                                            style: ConstantTextStyles.hintLightGrayTextStyle
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
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 child: Row(
                                   children: [
                                     Icon(Icons.favorite_border_outlined,color: ColorConstants.mediumGreyColor,),
                                     Icon(Icons.favorite_border_outlined,color: ColorConstants.mediumGreyColor),
                                   ],
                                 ),
                               ),
                               Container(
                                 child: Icon(Icons.share_outlined,color: ColorConstants.mediumGreyColor),

                               ),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
               
               )
             ],
            ),
          ),
        ],
      ),
    );
  }
}
