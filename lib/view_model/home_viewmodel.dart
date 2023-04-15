import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/app.locator.dart';
import 'package:stacked_example/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
}
