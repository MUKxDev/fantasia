import 'package:fantasia/ui/views/home/home_view_model.dart';
import 'package:fantasia/ui/widgets/dumb/book_of_the_month.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

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
            title: const Text('Home'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const BookOfTheMonth(
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
