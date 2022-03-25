import 'package:get/get.dart';
import 'package:tourism1/presentation/destination%20details/binding/destination_details_binding.dart';
import 'package:tourism1/presentation/destination%20details/view/destination_details_view.dart';
import 'package:tourism1/presentation/destination/binding/destination_binding.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
import 'package:tourism1/presentation/farms_and_factories/binding/farms_and_factories_binding.dart';
import 'package:tourism1/presentation/farms_and_factories/view/farms_and_factories_view.dart';
import 'package:tourism1/presentation/home/binding/home_binding.dart';
import 'package:tourism1/presentation/home/view/home_view.dart';
import 'package:tourism1/presentation/layout_page/binding/layout_binding.dart';
import 'package:tourism1/routes/routes.dart';
import 'package:tourism1/presentation/layout_page/view/layout_page.dart';

abstract class Pages {
  static final routes = [
    GetPage(
      name: Routes.startLayout,
      page: () =>  const LayoutPage(),
      binding: LayoutBinding()
    ),

    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.destination,
      page: () => const DestinationView(),
      binding: DestinationBinding(),
    ),
    GetPage(
      name: Routes.farmsAndFactories,
      page: () => FarmsAndFactoriesView(),
      binding: FarmsAndFactoriesBinding(),
    ),
    GetPage(
      name: Routes.destinationDetails,
      page: () => DestinationDetailsView(),
      binding: DestinationDetailsBinding(),
    ),
  ];
}
