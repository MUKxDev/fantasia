import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:flutter/material.dart';

class BookOfTheMonth extends StatelessWidget {
  const BookOfTheMonth({
    required this.title,
    required this.author,
    required this.imageURL,
    this.onTap,
    this.margin = 18,
    Key? key,
  }) : super(key: key);

  final String title;
  final String author;
  final String imageURL;
  final double margin;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 170,
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 600),
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: <BoxShadow>[
            const BoxShadow(
              color: Color(0x3f000000),
              blurRadius: 20,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: headline1.copyWith(color: colorWhite),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      author,
                      style: fontParagraph.copyWith(color: colorWhite),
                    ),
                  ],
                ),
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
                    boxShadow: <BoxShadow>[
                      const BoxShadow(
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
