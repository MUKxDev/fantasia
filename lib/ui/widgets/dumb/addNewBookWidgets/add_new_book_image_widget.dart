import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:fantasia/app/utils/constants.dart';
import 'package:flutter/material.dart';

class AddNewBookImageWidget extends StatelessWidget {
  const AddNewBookImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.screenHeight * 3.5 / 100,
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 47 / 100,
              height: SizeConfig.screenWidth * 75 / 100,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Insets.medium),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    // TODO: on Tap
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
                    borderRadius: BorderRadius.circular(Insets.medium),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.photo,
                      size: SizeConfig.blockSizeVertical * 7,
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
      );
}
