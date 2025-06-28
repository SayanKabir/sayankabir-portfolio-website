import 'package:flutter/material.dart';
import 'package:sayankabir_potfolio/sections/projects_section_item.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final crossAxisCount = width > 1000 ? 3 : width > 600 ? 2 : 1;
    final itemWidth = (width - 64 - ((crossAxisCount - 1) * 20)) / crossAxisCount;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          ProjectsSectionItem(imageName: 'passwordzzz', routeName: '/passwordzzz'),
          ProjectsSectionItem(imageName: 'sugamkrishi', routeName: '/sugamkrishi'),
          ProjectsSectionItem(imageName: 'parakeet', routeName: '/parakeet'),
          ProjectsSectionItem(imageName: 'homepage', routeName: '/homepage'),
          ProjectsSectionItem(imageName: 'pageprism', routeName: '/pageprism'),
        ].map((item) {
          return SizedBox(
            height: 350,
            width: itemWidth,
            child: item,
          );
        }).toList(),
      ),
    );
  }
}
