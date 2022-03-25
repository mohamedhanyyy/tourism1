import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/favourite_posts/favourite_post_controller/favourite_post_controller.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/widgets/post_widget.dart';

import '../../../themes/styles.dart';

class FavouritePostView extends StatefulWidget {
  @override
  _FavouritePostViewState createState() => _FavouritePostViewState();
}

class _FavouritePostViewState extends State<FavouritePostView> {
  final favPostController=Get.find<FavouritePostController>();
  TextEditingController commentTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,color: ColorConstants.blackColor,)),
        title: Text('Favourite',
          style: ConstantTextStyles.mediumHeadlineBlackPoppinsTextStyle,
        ),
        actions: [
          IconButton(onPressed: (){
           // Get.toNamed(Routes.tourismFavourite);
          }, icon: Icon(Icons.notifications,color: ColorConstants.greenColor,))
        ],
      ),
      //Post with comment
      body: ListView(
        children: [
          PostWidget(
              dummyLocation: favPostController.dummyLocation,
              dummyPostDescription:  favPostController.dummyPostDescription,
              dummyUserName:  favPostController.dummyUserName,
              dummyUserImage:  favPostController.dummyUserImage,
              dummyPostImage:  favPostController.dummyPostImage,
              commentCtrl: commentTextController,
              isComment: true),
        ],
      ),
    );
  }
}
