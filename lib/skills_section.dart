import 'package:flutter/material.dart';
import 'package:sayankabir_potfolio/skills_section_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final crossAxisCount = width > 1000 ? 6 : width > 600 ? 4 : 3;
    final spacing = 20.0;
    final itemWidth = (width - 64 - ((crossAxisCount - 1) * spacing)) / crossAxisCount;

    final items = [
      'flutter',
      'supabase',
      'firebase',
      'sqlite',
      'mysql',
      'git',
      'docker',
      'kubernetes',
      'cpp',
      'python',
      'flask',
      'html',
      'css',
      'react',
      'node',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: items.map((imageName) {
          return SizedBox(
            width: itemWidth,
            height: 120, // Adjust as needed for consistent layout
            child: SkillsSectionItem(imageName: imageName),
          );
        }).toList(),
      ),
    );
  }
}
