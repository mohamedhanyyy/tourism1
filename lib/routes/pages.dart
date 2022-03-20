import 'package:get/get.dart';
import 'package:tourism1/presentation/destination/binding/destination_binding.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
import 'package:tourism1/presentation/home/binding/home_binding.dart';
import 'package:tourism1/presentation/home/view/home_view.dart';
import 'package:tourism1/routes/routes.dart';

abstract class Pages {
  static final routes = [
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
  ];
}
