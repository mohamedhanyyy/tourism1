import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:tourism1/models/app.g.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
import 'package:tourism1/presentation/home/view/home_view.dart';
import 'package:tourism1/presentation/layout_page/controller/layout_controller.dart';
import 'package:tourism1/presentation/post_distenation/view/post_distenation.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/utils/paths/icons_path.dart';

import 'bottom_nav_bar.dart';
import 'button_navigate_bar.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {

  LayoutController controller = Get.find<LayoutController>();
  List<Widget> bodyContentTab = [
    const PostDestination(),
    const PostDestination(),
    PostDestination(),
    PostDestination(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print(" layout page index :${controller.tabIndex.value}");
      return Scaffold(
        backgroundColor:ColorConstants.lightGreyColor,
        body: bodyContentTab[controller.tabIndex.value],
        bottomNavigationBar:  const ButtonNaviBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
        backgroundColor: ColorConstants.whiteColor,
          child: Image.asset(ConstantIcons.logoIcon),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      );
    });
  }
}
