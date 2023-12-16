import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String description;
  const IntroPage(
      {super.key,
      required this.imagePath,
      required this.heading,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const SizedBox(
            height: 20,
          ),
          Text(
            heading,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
