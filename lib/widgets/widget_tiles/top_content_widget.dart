import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';

class TopContentWidget extends StatelessWidget {
  const TopContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/image_avatar_0.png',
          scale: 4.0,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DefaultTextWidget(
              text: "Hello, James",
              fontSize: 24,
              fontWeight: FontWeight.w700,
              textColor: textColorBold,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/icons/location_alt.svg'),
                const SizedBox(
                  width: 5,
                ),
                const DefaultTextWidget(
                  text: "Cambridge, United Kingdom",
                  fontSize: 14,
                  textColor: Color(0xFF464646),
                  fontWeight: FontWeight.w400,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
