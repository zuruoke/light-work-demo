import 'package:flutter/material.dart';
import 'package:lightwork/utils/alignments/alignments.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/box_shadow/custom_box_shadow.dart';
import 'package:lightwork/widgets/widget_tiles/content_title_item.dart';

class MiddleTileWidget extends StatelessWidget {
  const MiddleTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding / 1.5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
        boxShadow: [customBoxShadow()],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ContentTitleItem(
            picPath: 'assets/images/explore.svg',
            title: 'Job Offers',
            subtitle: '10 Jobs',
          ),
          ContentTitleItem(
            picPath: 'assets/icons/job.svg',
            title: 'My Jobs',
            subtitle: '5 Jobs',
            color: appColor,
          ),
          ContentTitleItem(
              isFindJob: true,
              picPath: 'assets/images/search.svg',
              title: 'Find a Job'),
        ],
      ),
    );
  }
}
