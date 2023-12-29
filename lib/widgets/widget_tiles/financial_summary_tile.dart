import 'package:flutter/cupertino.dart';
import 'package:lightwork/utils/alignments/alignments.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/box_shadow/custom_box_shadow.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';
import 'package:lightwork/widgets/widget_tiles/header_tile.dart';

class FinancialSummaryTile extends StatelessWidget {
  const FinancialSummaryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderTile(leftText: "Financial Summary", rightText: "See More"),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          height: 140,
          padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding / 1.5,
              vertical: verticalPadding / 1.5),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [customBoxShadow()],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/chart.png',
              ),
              const SizedBox(
                height: 5,
              ),
              const DefaultTextWidget(
                text: "£1550 earned this month",
                fontSize: 16,
                textColor: Color(0xFF202226),
                fontWeight: FontWeight.w700,
              )
            ],
          ),
        ),
      ],
    );
  }
}
