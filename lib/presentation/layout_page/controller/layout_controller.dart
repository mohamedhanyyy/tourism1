import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tourism1/presentation/destination/view/destination_view.dart';

class LayoutController extends GetxController{
  RxInt tabIndex = 0.obs;
  bool home = true;
  bool favorite = false;
  bool map = false;
  bool destination = false;
  buttonToggle({
    bool home = false,
    bool favorite = false,
    bool map = false,
    bool destination = false,
}){
    this.home = home;
    this.favorite = favorite;
    this.map = map;
    this.destination = destination;
  }

}