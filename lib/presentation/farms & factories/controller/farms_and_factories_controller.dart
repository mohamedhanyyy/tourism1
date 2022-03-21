import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../models/farm_and_factory_model.dart';
import '../../../utils/paths/images_path.dart';

class FarmsAndFactoriesController extends GetxController {
  TextEditingController farmSearchController = TextEditingController();

  List<FarmAndFactoryModel> farmAndFactoryList = [
    FarmAndFactoryModel(
      name: 'Farm',
      title: 'Hiba Farm',
      location: 'Jeddah',
      image: ConstantImages.farm,
    ),
    FarmAndFactoryModel(
      name: 'Factory',
      title: 'Candy Factory',
      location: 'Jeddah',
      image: ConstantImages.factory,
    ),
    FarmAndFactoryModel(
      name: 'Factory',
      title: 'Assembly Factory',
      location: 'Riyadh',
      image: ConstantImages.assembly,
    ),
    FarmAndFactoryModel(
      name: 'Farm',
      title: 'Wii Farm House',
      location: 'Al Dammam',
      image: ConstantImages.farm,
    ),
    FarmAndFactoryModel(
      name: 'Farm',
      title: 'Hiba Farm',
      location: 'Jeddah',
      image: ConstantImages.farm,
    ),
    FarmAndFactoryModel(
      name: 'Factory',
      title: 'Candy Factory',
      location: 'Jeddah',
      image: ConstantImages.factory,
    ),
    FarmAndFactoryModel(
      name: 'Factory',
      title: 'Assembly Factory',
      location: 'Riyadh',
      image: ConstantImages.assembly,
    ),
    FarmAndFactoryModel(
      name: 'Farm',
      title: 'Wii Farm House',
      location: 'Al Dammam',
      image: ConstantImages.farm,
    ),
  ];
}
