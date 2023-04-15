import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/view_model/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Build method Called yo!');
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewmodel, child) {
        log('View method Called yo!');

        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Counter Value: ${viewmodel.counterService.counterValue}"),
                TextButton(
                  onPressed: () {
                    viewmodel.addtoCounter();
                  },
                  child: Text('increase'),
                ),
                TextButton(
                  onPressed: () {
                    viewmodel.navigatetoHome();
                  },
                  child: Text("Navigate next"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
