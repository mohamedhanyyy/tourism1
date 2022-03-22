import 'package:get/get.dart';

class DestinationDetailsController extends GetxController {
  RxInt activityToggleIndex = 0.obs;
  RxInt farmsToggleIndex = 0.obs;

  List<String> activityNamesList = [
    'Camping',
    'Crop collect',
    'Milking',
    'Camping',
    'Crop collect',
    'Milking'
  ];

  void toggleActivityIndex(int index) {
    activityToggleIndex.value = index;
  }

  void toggleFarmIndex(int index) {
    farmsToggleIndex.value = index;
  }
}
