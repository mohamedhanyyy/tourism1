 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
 import 'package:tourism1/presentation/favourite_posts/favourite_post_view/favourite_post_view.dart';
import 'package:tourism1/presentation/layout_page/controller/layout_controller.dart';
import 'package:tourism1/presentation/map/view/google_maps_view.dart';
import 'package:tourism1/presentation/tourism_favourite/view/tourism_favourite_view.dart';
 import 'package:tourism1/presentation/tourism_feed/view/tourism_feed_view.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/utils/paths/icons_path.dart';

 import 'button_navigate_bar.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {

  // LayoutController controller = Get.find<LayoutController>();
  List<Widget> bodyContentTab = [
      TourismFeedView(),
      TourismFavouriteView(),
    GoogleMapsView(),
    DestinationView(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetX<LayoutController>(
      init: LayoutController(),
      initState: (_) {},
      builder: (logic) {
        print(" layout page index :${logic.tabIndex.value}");

        return Scaffold(
          backgroundColor: ColorConstants.lightGreyColor,
          body: bodyContentTab[logic.tabIndex.value],
          bottomNavigationBar: const ButtonNaviBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ColorConstants.whiteColor,
            child: Image.asset(ConstantIcons.logoIcon),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation
              .miniCenterDocked,
        );
      },
    );
  }
}
