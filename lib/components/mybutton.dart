import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: ElevatedButton(onPressed: onTap, child: Text(text)),
    );
  }
}
