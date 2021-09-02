import 'dart:developer';

import 'package:fantasia/ui/views/add_new_book/add_new_book_view_model.dart';
import 'package:fantasia/ui/widgets/dumb/addNewBookWidgets/add_new_book_app_bar_widget.dart';
import 'package:fantasia/ui/widgets/dumb/addNewBookWidgets/add_new_book_image_widget.dart';
import 'package:fantasia/ui/widgets/dumb/addNewBookWidgets/add_new_book_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddNewBookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddNewBookViewModel>.reactive(
      viewModelBuilder: () => AddNewBookViewModel(),
      onModelReady: (AddNewBookViewModel viewModel) =>
          viewModel.init(context: context),
      builder: (
        BuildContext context,
        AddNewBookViewModel viewModel,
        Widget? child,
      ) {
        return GestureDetector(
          onTap: () => viewModel.unfocus(),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints boxConstraints) {
              log(boxConstraints.toString(), name: 'constans');
              return const Scaffold(
                body: CustomScrollView(
                  slivers: <Widget>[
                    AddNewBookAppBarWidget(),
                    AddNewBookImageWidget(),
                    AddNewBookTextFieldWidget(hintText: 'sdas'),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
