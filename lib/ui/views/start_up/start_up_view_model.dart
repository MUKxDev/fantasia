import 'package:fantasia/app/core/custom_base_view_model.dart';
import 'package:fantasia/app/services/size_config.dart';
import 'package:flutter/cupertino.dart';

class StartUpViewModel extends CustomBaseViewModel {
  late BuildContext _context;

  void init(BuildContext context) {
    _context = context;
    SizeConfig().init(context: _context);
  }
}
