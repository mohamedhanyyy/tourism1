// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// import 'package:tourism1/models/app.g.dart';
// import 'package:tourism1/presentation/layout_page/controller/layout_controller.dart';
// import 'package:tourism1/themes/colors.dart';
// import 'package:tourism1/utils/paths/icons_path.dart';
//
// class BottomNaviBarDesign extends StatefulWidget {
//   const BottomNaviBarDesign({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNaviBarDesign> createState() => _BottomNaviBarDesignState();
// }
//
// class _BottomNaviBarDesignState extends State<BottomNaviBarDesign> {
//
//   LayoutController controller = Get.find<LayoutController>();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return BottomNavigationBar(
//         onTap: (value) {
//           controller.tabIndex.value = value;
//           print("Button nav bar index : ${controller.tabIndex.value}");
//         },
//         currentIndex: controller.tabIndex.value,
//         backgroundColor: ColorConstants.whiteColor,
//         unselectedItemColor: ColorConstants.greyColor,
//         selectedItemColor: ColorConstants.greenColor,
//         items: [
//           _buildTab(title: "Destinations" ,
//               icons: Image.asset(ConstantIcons.distenationTab,
//               color:controller.tabIndex.value == 0?
//               ColorConstants.greenColor:ColorConstants.greyColor ,)
//           ),
//           _buildTab(title: "Map", icons: const Icon(Icons.map)),
//           _buildTab(title: "Favourite", icons: const Icon(Icons.favorite)),
//           _buildTab(title: "Home", icons: const Icon(Icons.home)),
//         ],
//
//       );
//     });
//   }
//
//   BottomNavigationBarItem _buildTab({
//     required Widget icons,
//     required String title,
//   }) {
//     return BottomNavigationBarItem(
//       icon: icons,
//       label: title,
//     );
//   }
// }
//
