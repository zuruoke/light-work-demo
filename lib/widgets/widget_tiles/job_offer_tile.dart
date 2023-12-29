import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lightwork/utils/alignments/alignments.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/box_shadow/custom_box_shadow.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';
import 'package:lightwork/widgets/widget_tiles/header_tile.dart';

class JobOfferTileWidget extends StatelessWidget {
  const JobOfferTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderTile(leftText: "Job Offers", rightText: "View All"),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: horizontalPadding / 1.5,
            vertical: verticalPadding / 1.5,
          ),
          height: 135,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [customBoxShadow()],
            color: backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/file_2.png',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const DefaultTextWidget(
                    text: "Sink Repair",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xFF121315),
                  ),
                  const DefaultTextWidget(
                    text: "10 Regent Street, W17SK",
                    fontSize: 12.5,
                    fontWeight: FontWeight.w300,
                    textColor: Color(0xFF7B8D95),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/location_alt.svg'),
                      const DefaultTextWidget(
                        text: "  200m",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: Color(0xFF1A1D1E),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/image_avatar_1.png',
                        scale: 4.0,
                      ),
                      const DefaultTextWidget(
                        text: "  Clara Smith",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        textColor: Color(0xFF242A2D),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        shape: BoxShape.circle,
                        boxShadow: [customBoxShadow()]),
                    child: SvgPicture.asset(
                      'assets/images/tool.svg',
                      color: const Color(0xFF242A2D),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        shape: BoxShape.circle,
                        boxShadow: [customBoxShadow()]),
                    child: SvgPicture.asset(
                      'assets/icons/message.svg',
                      color: const Color(0xFF242A2D),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
