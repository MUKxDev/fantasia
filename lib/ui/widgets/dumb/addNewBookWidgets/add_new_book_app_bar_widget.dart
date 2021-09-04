import 'package:fantasia/app/services/deviceServices/platform_info.dart';
import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:flutter/material.dart';

class AddNewBookAppBarWidget extends StatelessWidget {
  const AddNewBookAppBarWidget({
    required this.platformInfo,
    Key? key,
  }) : super(key: key);

  final PlatformInfo platformInfo;

  @override
  Widget build(BuildContext context) {
    if (platformInfo.deviceType == DeviceScreenType.Tablet) {}

    return SliverAppBar(
      floating: true,
      elevation: 5,
      bottom: PreferredSize(
        preferredSize: Size(
          SizeConfig.screenWidth,
          0,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 23, bottom: 10),
            child: Text(
              'Book details',
              textAlign: TextAlign.start,
              style: appBarTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
