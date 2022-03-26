import 'package:get/get.dart';
import 'package:tourism1/utils/paths/images_path.dart';

import '../../../utils/paths/icons_path.dart';

class TourismFeedController extends GetxController {
  final String dummyLocation =
      'https://www.google.com/maps/dir/29.9892824,31.2053958/Mall+El+Arab+saudi/@30.0043777,30.949463,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x1458575169329079:0xf8562fae56bf860f!2m2!1d30.9750663!2d30.0072411';

  final String dummyPostDescription =
      'this is a trial to get every thing okay and no matter what happens Dummy DummyDummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy Dummy';

  final String dummyUserName = 'Ahmed Jalal';
  final String dummyUserImage = ConstantImages.profile;
  final String dummyPostImage = ConstantImages.mountain;
  List<Map<String, String>> categories = [
    {'Tourist Attraction': ConstantIcons.noFlyingGreen},
    {'Religious LandMarks': 'assets/icons/noun-mosque-2382544.svg'},
    {'Archaeological Sites': ConstantIcons.noAncientGreen},
    {'Public Gardens': ConstantIcons.noParkGreen},
  ];
  List<Map> dummyListDataCarousle = [
    {
      'ad line': 'One of the 7 wonders !',
      'ad subline': 'book your trip now',
      'image name': ConstantImages.nature,
    },
    {
      'ad line': 'One of the 8 wonders !',
      'ad subline': 'book your trip now',
      'image name': ConstantImages.mosque,
    },
    {
      'ad line': 'One of the 9 wonders !',
      'ad subline': 'book your trip now',
      'image name': ConstantImages.sea,
    }
  ];
}
