import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lightwork/utils/alignments/alignments.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/box_shadow/custom_box_shadow.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';

class ContentTitleItem extends StatelessWidget {
  final bool isFindJob;
  final String picPath;
  final String title;
  final String? subtitle;
  final Color? color;

  const ContentTitleItem({
    super.key,
    this.isFindJob = false,
    required this.picPath,
    required this.title,
    this.subtitle,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.only(right: horizontalPadding / 2),
      padding: const EdgeInsets.symmetric(vertical: verticalPadding / 2),
      height: 96,
      width: size.width * 0.25,
      decoration: BoxDecoration(
          color: isFindJob ? appColor : backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [customBoxShadow()]),
      child: Column(
        mainAxisAlignment: isFindJob
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            picPath,
            color: color,
          ),
          if (isFindJob)
            const SizedBox(
              height: 5,
            ),
          DefaultTextWidget(
            text: title,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            textColor: isFindJob ? backgroundColor : const Color(0xFF121315),
          ),
          if (!isFindJob || subtitle != null)
            DefaultTextWidget(
              text: subtitle!,
              fontSize: 13,
              fontWeight: FontWeight.w200,
              textColor: const Color(0xFF738B96),
            )
        ],
      ),
    );
  }
}
