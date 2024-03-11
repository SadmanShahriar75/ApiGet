import 'package:get/get.dart';

import '../controllers/apitest_controller.dart';

class ApitestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApitestController>(
      () => ApitestController(),
    );
  }
}
