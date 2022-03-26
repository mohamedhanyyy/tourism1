import 'dart:collection';

import 'package:get/get.dart';
import 'package:tourism1/presentation/destination%20details/binding/destination_details_binding.dart';
import 'package:tourism1/presentation/destination%20details/view/destination_details_view.dart';
import 'package:tourism1/presentation/destination/binding/destination_binding.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';
import 'package:tourism1/presentation/farms_and_factories/view/farms_and_factories_view.dart';
import 'package:tourism1/presentation/favourite_posts/favourite_post_view/favourite_post_view.dart';
import 'package:tourism1/presentation/layout_page/binding/layout_binding.dart';
import 'package:tourism1/presentation/map/binding/map_binding.dart';
import 'package:tourism1/presentation/map/view/google_maps_view.dart';
 import 'package:tourism1/presentation/tourism_favourite/binding/tourism_favourite_binding.dart';
import 'package:tourism1/presentation/tourism_favourite/view/tourism_favourite_view.dart';
import 'package:tourism1/presentation/tourism_feed/binding/tourism_feed_binding.dart';
import 'package:tourism1/presentation/tourism_feed/view/tourism_feed_view.dart';
import 'package:tourism1/routes/routes.dart';
import 'package:tourism1/presentation/layout_page/view/layout_page.dart';

import '../presentation/farms_and_factories/binding/farms_and_factories_binding.dart';
import '../presentation/favourite_posts/favourite_post_binding/favourite_post_binding.dart';

abstract class Pages {
  static final routes = [
    GetPage(
      name: Routes.startLayout,
      page: () => LayoutPage(),
      binding: LayoutBinding(),
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
    GetPage(
      name: Routes.tourismFeed,
      page: () => TourismFeedView(),
      binding: TourismFeedBinding(),
    ),
    GetPage(
      name: Routes.tourismFavourite,
      page: () => TourismFavouriteView(),
      binding: TourismFavouriteBinding(),
    ),
    GetPage(
      name: Routes.favouritePost,
      page: () => FavouritePostView(),
      binding: FavouritePostBinding(),
    ),
    GetPage(
      name: Routes.map,
      page: () => GoogleMapsView(),
      binding: GoogleMapsBinding(),
    ),
  ];
}
