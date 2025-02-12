import 'package:flutter/material.dart';

class CustomBottun extends StatelessWidget {
  const CustomBottun(
      {super.key,
      this.backgroundColor = Colors.white,
      this.borderRadius,
      required this.text,
      required this.onPressed,
      this.fontSize,
      this.fontColor = Colors.black,
      this.fontWeight});
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  final Color fontColor;
  final FontWeight? fontWeight;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: fontColor, fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
