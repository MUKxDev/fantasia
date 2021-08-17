import 'dart:developer';

import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:fantasia/app/utils/constants.dart';
import 'package:fantasia/ui/views/add_new_book/add_new_book_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              return Scaffold(
                body: CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      floating: true,
                      elevation: 5,
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
                              'Book details',
                              textAlign: TextAlign.start,
                              textScaleFactor:
                                  SizeConfig.devicePixelRatio * 1.5,
                              style: headline1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: SizeConfig.screenHeight * 3.5 / 100,
                          ),
                          SizedBox(
                            width: boxConstraints.minWidth <= BrakePoints.small
                                ? boxConstraints.minWidth / 2
                                : SizeConfig.devicePixelRatio * 300,
                            height: boxConstraints.maxHeight >= 800
                                ? SizeConfig.devicePixelRatio * 400
                                : boxConstraints.maxHeight * 50 / 100,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(Insets.medium),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Column(
                                        children: <Widget>[
                                          ListTile(
                                            title: Text(
                                              'From Gallery',
                                              style: headline3,
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                },
                                customBorder: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Insets.medium),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.photo,
                                    size: SizeConfig.devicePixelRatio * 45,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 3.5 / 100,
                          ),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: boxConstraints.minWidth <= 600
                                ? boxConstraints.minWidth / 1.2
                                : SizeConfig.devicePixelRatio * 530,
                            child: SizedBox(
                              child: TextField(
                                style: const TextStyle(
                                  color: Color(0xffEFEFEF),
                                ),
                                cursorColor: accentColor,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(
                                      SizeConfig.devicePixelRatio * 20),
                                  hintText: 'Book name',
                                  hintStyle: TextStyle(
                                      color: const Color(0xffBABABA)
                                          .withOpacity(.5)),
                                  filled: true,
                                  fillColor: addNewBookTextFieldColor,
                                  border: OutlineInputBorder(
                                    borderRadius: AppBorderRadius.xSmall,
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: AppBorderRadius.xSmall,
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
