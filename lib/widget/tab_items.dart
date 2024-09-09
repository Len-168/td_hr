import 'package:flutter/material.dart';
import '../widget/text_style.dart';

class TabItemWidget extends StatelessWidget {
  final String? title;
  final String? imagePath;
  TabItemWidget({
    super.key,
    this.title,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath.toString()),
            SizedBox(height: 10),
            Text(
              title.toString(),
              style: CustomerTextStyle.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
