import 'package:flutter/material.dart';
import 'package:lightwork/widgets/widget_tiles/file_content_tile.dart';
import 'package:lightwork/widgets/widget_tiles/header_tile.dart';

class FilesTileWidget extends StatelessWidget {
  const FilesTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderTile(leftText: "Recent Files", rightText: "View All"),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FileContentTile(
                iconTilePath: 'assets/images/pdf.png',
                imagePath: 'assets/images/file_0.png',
              ),
              FileContentTile(
                iconTilePath: 'assets/images/docs.png',
                imagePath: 'assets/images/file_1.png',
              ),
              FileContentTile(
                iconTilePath: 'assets/images/gallery.png',
                imagePath: 'assets/images/file_2.png',
              ),
              FileContentTile(
                iconTilePath: 'assets/images/pdf.png',
                imagePath: 'assets/images/file_0.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
