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
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
          ),
          SizedBox(width: 120, height: 120, child: Image.asset(imagePath)),
          const SizedBox(
            height: 20,
          ),
          Text(
            heading,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
