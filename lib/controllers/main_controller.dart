import 'package:get/get.dart';

class MainController extends GetxController {
  var isLoading = false.obs;

  void signup() {
    isLoading.value = true;

    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed('/home'),
    );
  }
}
