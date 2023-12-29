import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/text/default_text_widget.dart';

class TopRowWidget extends StatelessWidget {
  const TopRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/icons/menu.svg"),
        const DefaultTextWidget(
          text: "Dashboard",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          textColor: textColorHead,
        ),
        SvgPicture.asset('assets/icons/notification.svg')
      ],
    );
  }
}
