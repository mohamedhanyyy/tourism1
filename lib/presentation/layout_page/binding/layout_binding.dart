import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:tourism1/presentation/layout_page/controller/layout_controller.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LayoutController());
  }
}