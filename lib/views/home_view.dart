import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:stacked_example/view_model/counter_viewmodel.dart';
import 'package:stacked_example/view_model/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          body: Center(
              child: Text(
            "Counter Value: ${viewmodel.counterService.counterValue}",
            style: TextStyle(color: Colors.red, fontSize: 21),
          )),
        );
      },
    );
  }
}
