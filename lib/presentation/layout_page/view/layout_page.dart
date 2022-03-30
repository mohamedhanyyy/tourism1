 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
 import 'package:tourism1/presentation/favourite_posts/favourite_post_view/favourite_post_view.dart';
import 'package:tourism1/presentation/layout_page/controller/layout_controller.dart';
import 'package:tourism1/presentation/map/view/google_maps_view.dart';
import 'package:tourism1/presentation/tourism_favourite/view/tourism_favourite_view.dart';
import 'package:tourism1/presentation/tourism_feed/view/components/tourism_feed_app_bar.dart';
import 'package:tourism1/presentation/tourism_feed/view/components/tourism_feed_body_content.dart';
 import 'package:tourism1/presentation/tourism_feed/view/tourism_feed_view.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/utils/paths/icons_path.dart';
import 'package:tourism1/widgets/common_widgets/app_bar.dart';

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
    // GoogleMapsView(),
    Container(color: Colors.yellow,height: double.infinity,),
    const DestinationView(),
  ];

List<AppBar> appBarList= [
  buildCommonAppBar(title: 'Tourism Feed',),
  buildCommonAppBar(title: 'Favourite',),
  buildCommonAppBar(title:  'Map', textStyle: ConstantTextStyles.headLineTextStyle,icon: SvgPicture.asset(ConstantIcons.alarm)),
  buildCommonAppBar(title: 'Destinations', textStyle: ConstantTextStyles.headLineTextStyle, icon:  SvgPicture.asset(ConstantIcons.alarm)

  ),

];
  @override
  Widget build(BuildContext context) {
    return GetX<LayoutController>(
      init: LayoutController(),
      initState: (_) {},
      builder: (logic) {
        print(" layout page index :${logic.tabIndex.value}");

        return Scaffold(
          extendBody: true, // very important as note
          backgroundColor: ColorConstants.lightGreyColor,
          appBar: appBarList[logic.tabIndex.value],
          body: bodyContentTab[logic.tabIndex.value],
          bottomNavigationBar: const ButtonNaviBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            // backgroundColor: ColorConstants.whiteColor,
            child: Image.asset(ConstantIcons.logoIcon),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        );
      },
    );
  }
}
