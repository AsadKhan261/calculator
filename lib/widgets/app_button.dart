import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String text;
  Color? color;
  VoidCallback? onTap;
  AppButton({required this.text, this.color = Colors.grey,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child:  Center(child: Text(text)),
      ),
    );
  }
}
