import 'package:eduit/app/modules/account_page/controllers/account_page_controller.dart';
import 'package:get/get.dart';


class SplashBinding extends Bindings {
  @override
    void dependencies() {
    Get.lazyPut<AccountPageController>(
      () => AccountPageController(),
    );
  }

}
