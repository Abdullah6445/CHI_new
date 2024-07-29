import 'package:flutter/material.dart';
import 'package:learning_with_chi/PAGES/counter_pages/counter_vm.dart';
import 'package:stacked/stacked.dart';

class CounterVU extends StackedView<CounterVM> {
  CounterVU({super.key});

  CounterVM obj = CounterVM();

  @override
  Widget builder(BuildContext context, CounterVM viewModel, Widget? child) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.onAdd();
        },
        child: Icon(viewModel.floatingButtonIcon),
      ),
      appBar: AppBar(
        title: Text(viewModel.appbarTitle),
      ),
      body: Center(
        child: Text(
          viewModel.count.toString(),
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  CounterVM viewModelBuilder(BuildContext context) {
    return CounterVM();
  }
}
