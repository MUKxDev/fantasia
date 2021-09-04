import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:fantasia/app/utils/constants.dart';
import 'package:flutter/material.dart';

class AddNewBookImageWidget extends StatelessWidget {
  const AddNewBookImageWidget({
    required this.boxConstraints,
    Key? key,
  }) : super(key: key);
  final BoxConstraints? boxConstraints;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.screenHeight * 3.5 / 100,
          ),
          SizedBox(
            height: boxConstraints!.minHeight >= 936
                ? boxConstraints!.maxHeight * 936 / 100
                : boxConstraints!.minHeight * 37 / 100,
            width: boxConstraints!.maxWidth * 47 / 100,
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
                child: const Center(
                  child: Icon(
                    Icons.photo,
                    size: 30,
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
}
