import 'package:get/get.dart';
import 'package:tourism1/presentation/map/map_controller/map_controller.dart';

class MapBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => MapController());
  }
}