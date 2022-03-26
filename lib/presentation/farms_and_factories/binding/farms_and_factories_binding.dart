import 'package:get/get.dart';
import 'package:tourism1/presentation/farms_and_factories/controller/farms_and_factories_controller.dart';

class FarmsAndFactoriesBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => FarmsAndFactoriesController());
  }
}