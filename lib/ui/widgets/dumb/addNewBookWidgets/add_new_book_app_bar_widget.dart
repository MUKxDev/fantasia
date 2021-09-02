import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:flutter/material.dart';

class AddNewBookAppBarWidget extends StatelessWidget {
  const AddNewBookAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverAppBar(
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
              padding: const EdgeInsets.only(left: 23, bottom: 10),
              child: Text(
                'Book details',
                textAlign: TextAlign.start,
                textScaleFactor: 1.1,
                style: headline1,
              ),
            ),
          ),
        ),
      );
}
