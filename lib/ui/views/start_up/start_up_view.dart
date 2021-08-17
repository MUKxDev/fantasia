import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:fantasia/ui/views/start_up/start_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      viewModelBuilder: () => StartUpViewModel(),
      onModelReady: (StartUpViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        StartUpViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Start-up'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Navigate To',
                style: headline1.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? colorDarkGrey
                      : colorWhite,
                ),
              ),
              ElevatedButton(
                onPressed: () => model.navigateToHome(),
                child: const Text('Home'),
              ),
              ElevatedButton(
                onPressed: () => model.navigateToAddNewBook(),
                child: const Text('Add New Book'),
              ),
            ],
          )),
        );
      },
    );
  }
}
