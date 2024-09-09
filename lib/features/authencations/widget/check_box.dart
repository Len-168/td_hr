import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  final String? plachoder;
  final Function(bool?)? onChanged;
  CheckBoxWidget({
    this.plachoder,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: false,
          fillColor: WidgetStatePropertyAll(Colors.white),
          onChanged: onChanged,
        ),
        Text(
          plachoder.toString(),
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
