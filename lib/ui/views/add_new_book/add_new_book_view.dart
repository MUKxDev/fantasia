import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/ui/views/add_new_book/add_new_book_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddNewBookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddNewBookViewModel>.reactive(
      viewModelBuilder: () => AddNewBookViewModel(),
      onModelReady: (AddNewBookViewModel viewModel) => viewModel.init(context),
      builder: (
        BuildContext context,
        AddNewBookViewModel viewModel,
        Widget? child,
      ) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                bottom: PreferredSize(
                  preferredSize: Size(
                    SizeConfig.screenWidth,
                    SizeConfig.screenHeight * 3 / 100,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.devicePixelRatio * 23,
                        bottom: SizeConfig.devicePixelRatio * 10,
                      ),
                      child: Text(
                        'data',
                        textAlign: TextAlign.start,
                        textScaleFactor: SizeConfig.devicePixelRatio * 1.5,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
