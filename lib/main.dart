import 'package:flutter/material.dart';
import 'package:stacked_example/app/app.locator.dart';
import 'package:stacked_example/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

main() async {
  await setupLocator();
  runApp(CounterApplication());
}

class CounterApplication extends StatelessWidget {
  const CounterApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
