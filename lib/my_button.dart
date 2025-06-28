import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/hover_builder.dart';

class MyButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const MyButton({
    super.key,
    this.onTap, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      builder: (context, isHovered) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                child,
                AnimatedScale(
                  scale: isHovered ? 1 : 0,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeOut,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      Icons.arrow_outward,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

