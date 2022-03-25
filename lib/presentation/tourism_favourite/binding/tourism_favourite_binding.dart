import 'package:get/get.dart';
import 'package:tourism1/presentation/tourism_favourite/controller/tourism_favourite_controller.dart';

class TourismFavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TourismFavouriteController());
  }
}
