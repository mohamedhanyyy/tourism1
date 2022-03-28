import 'package:get/get.dart';
import 'package:tourism1/presentation/post_destination/controller/post_destination_controller.dart';

class PostDestinationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PostDestinationController());
  }

}