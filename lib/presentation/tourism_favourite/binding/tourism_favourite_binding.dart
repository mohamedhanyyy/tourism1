import 'package:get/get.dart';
import 'package:tourism1/presentation/tourism_favourite/controller/tourism_favourite_controller.dart';
import 'package:tourism1/presentation/tourism_feed/controller/tourism_feed_controller.dart';

class TourismFavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TourismFavouriteController());
  }
}
