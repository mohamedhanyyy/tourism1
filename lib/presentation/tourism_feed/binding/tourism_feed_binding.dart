import 'package:get/get.dart';
import 'package:tourism1/presentation/tourism_feed/controller/tourism_feed_controller.dart';

class TourismFeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TourismFeedController(),fenix: true);
  }
}
