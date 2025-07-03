import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/components/hover_builder.dart';
import 'package:web/web.dart' as web;

class ProjectsSectionItem extends StatelessWidget {
  final String imageName;
  final String routeName;
  const ProjectsSectionItem({super.key, required this.imageName, required this.routeName});

  void openRouteInNewTab(String path) {
    final origin = web.window.location.origin;
    web.window.open('$origin/#$path', '_blank');
  }

  @override
  Widget build(BuildContext context) {
    var vw = MediaQuery.of(context).size.width;
    return HoverBuilder(
      builder: (context, isHovered) {
        return GestureDetector(
          onTap: ()=>openRouteInNewTab(routeName),
          child: AnimatedScale(
            duration: const Duration(milliseconds: 300),
            scale: isHovered ? 1.1 : 1,
            child: Container(
              width: vw * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('assets/images/projects/$imageName.png',),
                  fit: BoxFit.fitWidth, // or BoxFit.contain based on your layout
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
