import 'package:flutter/material.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';

class HeaderTile extends StatelessWidget {
  final String leftText;
  final String rightText;
  const HeaderTile({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultTextWidget(
          text: leftText,
          fontSize: 20,
          textColor: const Color(0xFF1A1D1E),
          fontWeight: FontWeight.w600,
        ),
        DefaultTextWidget(
          text: rightText,
          fontSize: 18,
          textColor: appColor,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
}
