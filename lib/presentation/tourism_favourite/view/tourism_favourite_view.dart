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
import '../../../widgets/common widgets/sized_box.dart';
import '../../../widgets/image_carousel_slider.dart';
import '../../../widgets/post_text_field.dart';
import '../controller/tourism_favourite_controller.dart';

class TourismFavouriteView extends StatefulWidget {
  @override
  _TourismFavouriteViewState createState() => _TourismFavouriteViewState();
}

class _TourismFavouriteViewState extends State<TourismFavouriteView> {
  final controllerFavourite = Get.find<TourismFavouriteController>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Favourite',
          textAlign: TextAlign.start,
          style: ConstantTextStyles.mediumHeadlineBlackPoppinsTextStyle,
        ),

        actions: [
          IconButton(onPressed: (){
           // Get.toNamed(Routes.tourismFavourite);
          }, icon: Icon(Icons.notifications,color: ColorConstants.greenColor,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
        child: GridView.builder(
          itemCount: 15,
            shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            mainAxisExtent: Get.height*.165,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15

          ),

            itemBuilder:(context,index)=>favouriteContainer() ),
      ),
    );
  }

  // image stack favourite
Widget favouriteContainer(){
    return InkWell(
      onTap: (){
         Get.toNamed(Routes.favouritePost);
      },
      child: Stack(
        children: [
          Container(
              height: Get.height*.2,
            //  width: Get.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.3),
                  ]),
                image: DecorationImage(
          image: AssetImage(ConstantImages.farm),fit: BoxFit.cover,)
            ),
          ),
          Container(
            height: Get.height*.2,
            //  width: Get.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(

                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.5),
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.2),
                      Colors.black.withOpacity(.1),
                    ]),

            ),
          ),
             // child: Image(image:AssetImage(ConstantImages.sea),fit: BoxFit.cover,)),
          Positioned(
            bottom: 0,
            child: Container(
                height: Get.height*.12,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: AppPadding.eightPadding,top: AppPadding.twentyFivePadding),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage(controllerFavourite.dummyUserImage),),
                          tenWidthSizedBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(controllerFavourite.dummyUserName,style: ConstantTextStyles.headlineWhiteTextStyle,),
                              tenHeightSizedBox,
                              Text('Pyramids',style: ConstantTextStyles.regularTwelveWhitePoppinsTextStyle,),
                            ],
                          )
                        ],
                      ),
                    ),


                  ],
                )),
          )
        ],
      ),
    );
}
}
