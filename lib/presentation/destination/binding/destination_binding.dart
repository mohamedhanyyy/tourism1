import 'package:get/get.dart';
import 'package:tourism1/presentation/destination/controller/destination_controller.dart';

class DestinationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DestinationController());
  }
}
