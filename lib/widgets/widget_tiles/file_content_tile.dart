import 'package:flutter/material.dart';
import 'package:lightwork/utils/alignments/alignments.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/box_shadow/custom_box_shadow.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';

class FileContentTile extends StatelessWidget {
  final String iconTilePath;
  final String imagePath;
  const FileContentTile({
    super.key,
    required this.iconTilePath,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: horizontalPadding / 2),
      padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding / 2, vertical: verticalPadding / 2),
      height: 150,
      width: 0.28 * size.width,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [customBoxShadow()]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                // color: backgroundColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1.0, color: const Color(0xFFD3E0E6))),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Image.asset(
                iconTilePath,
                scale: 3.5,
              ),
              const DefaultTextWidget(
                text: " Sink Repair...",
                fontSize: 11,
                fontWeight: FontWeight.w300,
                textColor: Color(0xFF738B96),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
