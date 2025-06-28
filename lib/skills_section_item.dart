import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsSectionItem extends StatelessWidget {
  final String imageName;
  const SkillsSectionItem({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Image.asset(
        'assets/images/$imageName.png',
        height: 10,
        width: 10,
      ),
    );
  }
}
