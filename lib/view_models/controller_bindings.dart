import 'package:get/get.dart';
import 'package:goup_app/view_models/controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}
