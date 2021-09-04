import 'package:fantasia/app/services/deviceServices/platform_info.dart';
import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({
    required this.builder,
    Key? key,
  }) : super(key: key);

  final Widget Function(BuildContext context, PlatformInfo sizingInformation)
      builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final MediaQueryData _mediaQuery = MediaQuery.of(context);

        final PlatformInfo _sizingInformation = PlatformInfo(
          orientation: _mediaQuery.orientation,
          platformType:
              const PlatformInfo().getCurrentPlatformType(context: context),
          deviceType:
              const PlatformInfo().getDeviceScreenType(mediaQuery: _mediaQuery),
          screenSize: _mediaQuery.size,
          localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
        );

        return builder(context, _sizingInformation);
      },
    );
  }
}
