import 'package:flutter/material.dart';
import 'package:hr_system/widget/text_style.dart';

class ElevetedButtonWidget extends StatelessWidget {
  final String? hitText;
  final VoidCallback? onPressed;
  final double height;
  final double radius;

  ElevetedButtonWidget({
    this.radius = 8,
    this.height = 60,
    this.hitText,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          hitText.toString(),
          style: CustomerTextStyle.primary,
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height),
          backgroundColor: Colors.blue,
          splashFactory: NoSplash.splashFactory,
          surfaceTintColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
