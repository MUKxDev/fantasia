import 'package:fantasia/ui/widgets/dumb/bookOfTheMonth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                BookOfTheMonth(
                  title: 'The way of kings',
                  author: 'Brandon Sanderson',
                  imageURL:
                      'https://upload.wikimedia.org/wikipedia/en/thumb/8/8b/TheWayOfKings.png/220px-TheWayOfKings.png',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
