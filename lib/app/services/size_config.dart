import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double devicePixelRatio;

  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;

  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  void init({required BuildContext context}) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    devicePixelRatio = mediaQueryData.devicePixelRatio;

    _safeAreaHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    _safeAreaVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;

    blockSizeHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    blockSizeVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

double _blockSize({required BuildContext context}) {
  return SizeConfig.blockSizeHorizontal;
}

double _blockSizeVertical({required BuildContext context}) {
  return SizeConfig.blockSizeVertical;
}

double screenWidth({required BuildContext context}) {
  SizeConfig().init(context: context);
  return SizeConfig.screenWidth;
}

double screenHeight({required BuildContext context}) {
  SizeConfig().init(context: context);
  return SizeConfig.screenHeight;
}

double blockSize({required BuildContext context}) {
  SizeConfig().init(context: context);
  final double blockSize =
      _blockSizeVertical(context: context) + _blockSize(context: context) / 2;
  return blockSize;
}

Widget verticalSpaceXSmall({required BuildContext context}) {
  return SizedBox(
    height: blockSize(context: context) * 1,
  );
}

Widget verticalSpaceSmall({required BuildContext context}) {
  return SizedBox(
    height: blockSize(context: context) * 2,
  );
}

Widget verticalSpaceMedium({required BuildContext context}) {
  return SizedBox(
    height: blockSize(context: context) * 5,
  );
}

Widget verticalSpaceLarge({required BuildContext context}) {
  return SizedBox(
    height: blockSize(context: context) * 10,
  );
}

Widget horizontalSpaceXSmall({required BuildContext context}) {
  return SizedBox(
    width: blockSize(context: context) * 1,
  );
}

Widget horizontalSpaceSmall({required BuildContext context}) {
  return SizedBox(
    width: blockSize(context: context) * 2,
  );
}

Widget horizontalSpaceMedium({required BuildContext context}) {
  return SizedBox(
    width: blockSize(context: context) * 5,
  );
}

Widget horizontalSpaceLarge({required BuildContext context}) {
  return SizedBox(
    width: blockSize(context: context) * 10,
  );
}
