import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayankabir_potfolio/components/hover_builder.dart';

class NavButtonItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const NavButtonItem({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isContact = title.toLowerCase() == 'contact';

    return HoverBuilder(
      builder: (context, isHovered) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    if (isContact)
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
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: isHovered ? 1.5 : 0,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(100),
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

