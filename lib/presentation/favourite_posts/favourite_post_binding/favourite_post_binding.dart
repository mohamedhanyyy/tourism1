import 'package:get/get.dart';
import 'package:tourism1/presentation/favourite_posts/favourite_post_controller/favourite_post_controller.dart';

class FavouritePostBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FavouritePostController());
  }

}