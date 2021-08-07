import 'package:fantasia/app/core/custom_base_view_model.dart';
import 'package:fantasia/app/locator/locator.dart';
import 'package:fantasia/app/router/router.dart';
import 'package:fantasia/app/services/router_service.dart';

class StartUpViewModel extends CustomBaseViewModel {
  Future<void> init() async {}

  final RouterService _routerService = locator<RouterService>();

  void navigateToHome() {
    _routerService.router.navigate(const HomeRoute());
  }

  void navigateToAddNewBook() {
    _routerService.router.navigate(const AddNewBookRoute());
  }
}
