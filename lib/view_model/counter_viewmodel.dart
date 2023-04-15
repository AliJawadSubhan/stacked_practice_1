import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/app.locator.dart';
import 'package:stacked_example/app/app.router.dart';
import 'package:stacked_example/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addtoCounter() {
    counterService.addCounterValue();
    rebuildUi();
  }

  navigatetoHome() {
    navigationService.navigateTo(Routes.homeView);
  }
}
