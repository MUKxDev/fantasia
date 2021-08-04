import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:flutter/material.dart';

class BookOfTheMonth extends StatelessWidget {
  final String title;
  final String author;
  final String imageURL;
  final double margin;
  final VoidCallback? onTap;

  const BookOfTheMonth(
      {Key? key,
      required this.title,
      required this.author,
      required this.imageURL,
      this.onTap,
      this.margin = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 170,
        width: double.infinity,
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: colorBlue,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              blurRadius: 20,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: fontHeading1.copyWith(color: colorWhite),
                  ),
                  Text(
                    author,
                    style: fontParagraph.copyWith(color: colorWhite),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Transform.rotate(
                angle: 0.13,
                child: Container(
                  height: 136,
                  width: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(imageURL)),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
