import 'package:fantasia/ui/views/add_new_book/add_new_book_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddNewBookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddNewBookViewModel>.reactive(
      viewModelBuilder: () => AddNewBookViewModel(),
      onModelReady: (AddNewBookViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        AddNewBookViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'AddNewBookView',
            ),
          ),
        );
      },
    );
  }
}
