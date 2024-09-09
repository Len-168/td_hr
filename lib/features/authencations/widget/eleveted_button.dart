import 'package:flutter/material.dart';

class ElevetedButtonWidget extends StatelessWidget {
  final String? hitText;
  final VoidCallback? onPressed;
  final double height;
  ElevetedButtonWidget({
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
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height),
          backgroundColor: Colors.white,
          splashFactory: NoSplash.splashFactory,
          surfaceTintColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
