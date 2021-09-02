import 'package:fantasia/app/services/size_config.dart';
import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/utils/constants.dart';
import 'package:flutter/material.dart';

class AddNewBookTextFieldWidget extends StatelessWidget {
  const AddNewBookTextFieldWidget({Key? key, this.hintText}) : super(key: key);

  final String? hintText;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: SizeConfig.screenWidth * 80 / 100,
              child: SizedBox(
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xffEFEFEF),
                  ),
                  cursorColor: accentColor,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    hintText: hintText,
                    hintStyle: TextStyle(
                        color: const Color(0xffBABABA).withOpacity(.5)),
                    filled: true,
                    fillColor: addNewBookTextFieldColor,
                    border: const OutlineInputBorder(
                      borderRadius: AppBorderRadius.small,
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: AppBorderRadius.xSmall,
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
