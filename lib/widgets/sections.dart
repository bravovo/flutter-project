import 'package:flutter/material.dart';

class SectionsWidget extends StatelessWidget {
  final String image;
  final Widget? child;
  final double height;

  const SectionsWidget({
    super.key,
    required this.image,
    this.child,
    this.height = 369,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
