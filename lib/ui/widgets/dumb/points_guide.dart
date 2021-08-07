import 'package:fantasia/app/models/rule.dart';
import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:flutter/material.dart';

class PointsGuide extends StatelessWidget {
  const PointsGuide({
    required this.rules,
    this.margin = 18,
    Key? key,
  }) : super(key: key);

  final List<Rule> rules;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 600),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        color: colorDarkNote,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: colorDarkGrey.withAlpha(40),
        ),
        boxShadow: <BoxShadow>[
          const BoxShadow(
            color: Color(0x19000000),
            blurRadius: 20,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Text(
                'Points Guide ✨',
                style: fontTitle1.copyWith(color: colorDarkGrey),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: rules.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 40,
                              child: Text(
                                rules[index].points.toString(),
                                style: fontTitle2.copyWith(
                                  color: colorYellow,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                rules[index].text,
                                style: fontParagraph.copyWith(
                                  color: colorDarkGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
