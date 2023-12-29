import 'package:flutter/material.dart';
import 'package:lightwork/utils/alignments/alignments.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/widgets/widget_tiles/files_tile.dart';
import 'package:lightwork/widgets/widget_tiles/financial_summary_tile.dart';
import 'package:lightwork/widgets/widget_tiles/job_offer_tile.dart';
import 'package:lightwork/widgets/widget_tiles/middle_tile.dart';
import 'package:lightwork/widgets/widget_tiles/top_content_widget.dart';
import 'package:lightwork/widgets/widget_tiles/top_row_wiget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    const double topOffset = 208;
    const double contentHeight = 250;
    const double middleTileOffset = 358;
    const double jobOfferTileOffset = 565;
    const double financialSummaryOffset = 784;

    final double stackHeight = MediaQuery.of(context).size.height * 1.2;

    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: stackHeight,
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: horizontalPadding),
                  color: shadowColor,
                  height: contentHeight,
                  width: double.infinity,
                  child: const Column(
                    children: [
                      SizedBox(height: 40),
                      TopRowWidget(),
                      SizedBox(height: 20),
                      TopContentWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: topOffset,
            left: horizontalPadding,
            right: horizontalPadding,
            child: MiddleTileWidget(),
          ),
          const Positioned(
            top: middleTileOffset,
            left: horizontalPadding,
            right: horizontalPadding,
            child: JobOfferTileWidget(),
          ),
          const Positioned(
            top: jobOfferTileOffset,
            left: horizontalPadding,
            right: horizontalPadding,
            child: FilesTileWidget(),
          ),
          const Positioned(
            top: financialSummaryOffset,
            left: horizontalPadding,
            right: horizontalPadding,
            child: FinancialSummaryTile(),
          ),
        ],
      ),
    );
  }
}
