import 'package:get/get.dart';
// import 'package:tourism1/presentation/destination%20details/binding/destination_details_binding.dart';
// import 'package:tourism1/presentation/destination%20details/view/destination_details_view.dart';
import 'package:tourism1/presentation/destination/binding/destination_binding.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
import 'package:tourism1/presentation/farms%20&%20factories/binding/farms_and_factories_binding.dart';
import 'package:tourism1/presentation/farms%20&%20factories/view/farms_and_factories_view.dart';
import 'package:tourism1/presentation/home/binding/home_binding.dart';
import 'package:tourism1/presentation/home/view/home_view.dart';
import 'package:tourism1/presentation/tourism_feed/binding/tourism_feed_binding.dart';
import 'package:tourism1/presentation/tourism_feed/view/tourism_feed_view.dart';
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
    GetPage(
      name: Routes.farmsAndFactories,
      page: () => FarmsAndFactoriesView(),
      binding: FarmsAndFactoriesBinding(),
    ),

    // GetPage(
    //   name: Routes.destinationDetails,
    //   page: () => DestinationDetailsView(),
    //   binding: DestinationDetailsBinding(),
    // ),
    GetPage(
      name: Routes.tourismFeed,
      page: () => TourismFeedView(),
      binding: TourismFeedBinding(),
    ),
  ];
}
