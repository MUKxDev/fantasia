import 'dart:developer';
import 'dart:typed_data';
import 'package:fantasia/app/core/custom_base_view_model.dart';
import 'package:fantasia/app/models/rule.dart';
import 'package:file_saver/file_saver.dart';
import 'package:screenshot/screenshot.dart';

class HomeViewModel extends CustomBaseViewModel {
  Future<void> init() async {}

  final List<Rule> _rules = <Rule>[
    Rule(
      text: 'points for each challenge/dare read from ANY GENRE',
      points: 10,
    ),
    Rule(
      text: 'points for each challenge/dare read from FANTASY GENRE',
      points: 20,
    ),
    Rule(
      text: 'points for any additional general/fantasy read',
      points: 5,
    ),
    Rule(
      text: 'points for any review written for any read book',
      points: 5,
    ),
    Rule(
      text: 'points for reading the selected book of the month',
      points: 20,
    ),
    Rule(
      text: 'points for each book read from the Admins Picks list',
      points: 30,
    ),
  ];

  List<Rule> get rules => _rules;

  // Tested only for web [needs premesions on IOS/Android]
  ScreenshotController screenshotController = ScreenshotController();

  void screenshot() {
    screenshotController.capture(pixelRatio: 2).then((Uint8List? image) async {
      if (image != null) {
        final String imageName = 'month_details(${DateTime.now().hashCode})';
        String path = await FileSaver.instance.saveFile(
          imageName,
          image,
          'png',
          mimeType: MimeType.PNG,
        );
        path += '/$imageName.png';
        log('Image saved in: $path', name: 'screenshot');
      }
    });
  }
}
