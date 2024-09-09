import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool showPassword;
  TextEditingController? controller;
  AuthTextFieldWidget({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.showPassword = false,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
        ),
      ),
    );
  }
}
