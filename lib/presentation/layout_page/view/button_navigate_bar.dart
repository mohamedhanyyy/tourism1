import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tourism1/presentation/layout_page/controller/layout_controller.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/utils/paths/icons_path.dart';
import 'dart:ui' as ui;

class ButtonNaviBar extends StatefulWidget {
  const ButtonNaviBar({Key? key}) : super(key: key);

  @override
  _ButtonNaviBarState createState() => _ButtonNaviBarState();
}

class _ButtonNaviBarState extends State<ButtonNaviBar> {

  LayoutController controller = Get.find<LayoutController>();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size:  const Size(double.infinity,70), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: CustomPainterNav(),


      child: Container(
        height: 70.0,
        padding: const EdgeInsets.only(top: 15.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTab(
              onTap: () {
                controller.buttonToggle(destination: true);
                controller.tabIndex.value = 0;
              },
              icons: Icon(Icons.home,
                color: controller.home ?
                ColorConstants.greenColor : ColorConstants.greyColor,),
              title: "Home",
            ),
            _buildTab(
              onTap: () {
                controller.buttonToggle(favorite: true);
                controller.tabIndex.value = 1;
              },
              icons: Icon(Icons.favorite,
                color: controller.favorite ?
                ColorConstants.greenColor : ColorConstants.greyColor,),
              title: "Favorite",

            ),
            SizedBox(
              width: 40.0,
            ),
            _buildTab(
              onTap: () {
                controller.buttonToggle(map: true);
                controller.tabIndex.value = 2;
              },
              icons: Icon(Icons.map,
                color: controller.map ?
                ColorConstants.greenColor : ColorConstants.greyColor,),
              title: "Map",

            ),
            _buildTab(
              onTap: () {
                controller.buttonToggle(destination: true);
                controller.tabIndex.value = 3;
              },
              icons: Image.asset(ConstantIcons.destinationTab,
                color: controller.destination ?
                ColorConstants.greenColor : ColorConstants.greyColor,
                fit: BoxFit.contain, height: 25, width: 25,
              ),
              title: "Destination",

            ),
          ],
        ),
      ),
    );
  }


  Widget _buildTab({
    required Widget icons,
    required String title,
    required VoidCallback onTap
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons,
          Text(title)
        ],
      ),
    );
  }
}


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(size.width*0.0012000,0);
    path0.lineTo(size.width*0.3965000,0);
    path0.quadraticBezierTo(size.width*0.3679667,size.height*0.4957000,size.width*0.4979667,size.height*0.5753000);
    path0.quadraticBezierTo(size.width*0.6293333,size.height*0.5191000,size.width*0.6034000,size.height*0.0036000);
    path0.lineTo(size.width*0.9988000,size.height*0.0036000);
    path0.lineTo(size.width*0.9992000,size.height);
    path0.lineTo(0,size.height);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class CustomPainterNav extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = ColorConstants.whiteColor
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 35)
      ..quadraticBezierTo(0, 0, size.width * 0.125, 00)
      ..lineTo(size.width * 0.300, 00)
      ..quadraticBezierTo(size.width * 0.375, 00, size.width * 0.385, 20)
      ..arcToPoint(Offset(size.width * 0.615, 20),
          radius: const Radius.circular(50.0), clockwise: false)
      ..quadraticBezierTo(size.width * 0.625, 00, size.width * 0.70, 00)
      ..lineTo(size.width * 0.875, 00)
      ..quadraticBezierTo(size.width, 00, size.width, 35)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

