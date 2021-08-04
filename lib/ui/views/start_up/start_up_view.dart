import 'package:fantasia/ui/views/start_up/start_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      viewModelBuilder: () => StartUpViewModel(),
      onModelReady: (StartUpViewModel viewModel) => viewModel.init(context),
      builder:
          (BuildContext context, StartUpViewModel viewModel, Widget? child) {
        return const Scaffold();
      },
    );
  }
}
