import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

enum PlatformType {
  Web,
  iOS,
  Android,
  MacOS,
  Fuchsia,
  Linux,
  Windows,
  Unknown,
}

class PlatformInfo {
  bool isDesktopOS() {
    return Platform.isMacOS || Platform.isLinux || Platform.isWindows;
  }

  bool isAppOS() {
    return Platform.isMacOS || Platform.isAndroid;
  }

  bool isWeb() {
    return kIsWeb;
  }

  PlatformType getCurrentPlatformType() {
    if (kIsWeb) {
      return PlatformType.Web;
    } else if (Platform.isMacOS) {
      return PlatformType.MacOS;
    } else if (Platform.isFuchsia) {
      return PlatformType.Fuchsia;
    } else if (Platform.isLinux) {
      return PlatformType.Linux;
    } else if (Platform.isWindows) {
      return PlatformType.Windows;
    } else if (Platform.isIOS) {
      return PlatformType.iOS;
    } else if (Platform.isAndroid) {
      return PlatformType.Android;
    }
    return PlatformType.Unknown;
  }
}
