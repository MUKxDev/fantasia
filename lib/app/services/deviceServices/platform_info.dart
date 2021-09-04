import 'dart:io';
import 'package:fantasia/app/utils/constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

enum PlatformType { Web, IOS, Android, MacOS, Fuchsia, Linux, Windows }
enum DeviceScreenType { Mobile, Tablet, Desktop }

class PlatformInfo {
  const PlatformInfo({
    this.orientation,
    this.deviceType,
    this.screenSize,
    this.localWidgetSize,
  });

  final Orientation? orientation;
  final DeviceScreenType? deviceType;
  final Size? screenSize;
  final Size? localWidgetSize;

  PlatformType getCurrentPlatformType({required BuildContext context}) {
    final TargetPlatform _targetPlatform = Theme.of(context).platform;
    return _getPlatformEnumType(targetPlatform: _targetPlatform);
  }

  DeviceScreenType getDeviceScreenType({required MediaQueryData mediaQuery}) {
    final Orientation _orientation = mediaQuery.orientation;
    late double _deviceWidth;

    _deviceWidth =
        _getDeviceWidth(mediaQuery: mediaQuery, orientation: _orientation);

    return _getDeviceScreenType(deviceWidth: _deviceWidth);
  }

  bool isDesktopOS() {
    return Platform.isMacOS || Platform.isLinux || Platform.isWindows;
  }

  bool isAppOS() {
    return Platform.isMacOS || Platform.isAndroid;
  }

  bool isWeb() {
    return kIsWeb;
  }

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }

  PlatformType _getPlatformEnumType({required TargetPlatform targetPlatform}) {
    late PlatformType _platformType;

    switch (targetPlatform) {
      case TargetPlatform.android:
        _platformType = PlatformType.Android;
        break;
      case TargetPlatform.iOS:
        _platformType = PlatformType.IOS;
        break;
      case TargetPlatform.windows:
        _platformType = PlatformType.Windows;
        break;
      case TargetPlatform.macOS:
        _platformType = PlatformType.MacOS;
        break;
      case TargetPlatform.linux:
        _platformType = PlatformType.Linux;
        break;
      case TargetPlatform.fuchsia:
        _platformType = PlatformType.Fuchsia;
        break;
    }
    return _platformType;
  }

  double _getDeviceWidth({
    required MediaQueryData mediaQuery,
    required Orientation orientation,
  }) {
    late double _deviceWidth;

    switch (orientation) {
      case Orientation.landscape:
        _deviceWidth = mediaQuery.size.height;
        break;
      case Orientation.portrait:
        _deviceWidth = mediaQuery.size.width;
        break;
    }
    return _deviceWidth;
  }

  DeviceScreenType _getDeviceScreenType({required double deviceWidth}) {
    late DeviceScreenType _deviceScreenType;

    if (deviceWidth > BrakePoints.large) {
      _deviceScreenType = DeviceScreenType.Desktop;
    } else if (deviceWidth > BrakePoints.mid) {
      _deviceScreenType = DeviceScreenType.Tablet;
    } else {
      _deviceScreenType = DeviceScreenType.Mobile;
    }

    return _deviceScreenType;
  }
}
