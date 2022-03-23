import 'package:get/get.dart';
import 'package:tourism1/presentation/destination%20details/controller/destination_details_controller.dart';

class DestinationDetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DestinationDetailsController(),fenix: true);
  }
}