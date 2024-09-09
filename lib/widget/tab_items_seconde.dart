import 'package:flutter/material.dart';
import '../widget/text_style.dart';

class TabItemSecondeWidget extends StatelessWidget {
  final String? firstTitle;
  final String? seconTitel;
  final String? imagePath;
  TabItemSecondeWidget({
    super.key,
    this.firstTitle,
    this.imagePath,
    this.seconTitel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath.toString()),
            SizedBox(height: 5),
            Text(
              firstTitle.toString(),
              style: CustomerTextStyle.secondary,
            ),
            SizedBox(height: 5),
            Text(
              seconTitel.toString(),
              style: CustomerTextStyle.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
