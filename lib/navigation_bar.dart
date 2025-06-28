import 'package:flutter/material.dart';
import 'package:sayankabir_potfolio/blur_background.dart';
import 'package:sayankabir_potfolio/navigation_buttons_bar.dart';

class NavBar extends StatelessWidget {
  final void Function(String section)? onNavClick;

  const NavBar({super.key, this.onNavClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'SayanKabir.',
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
          Center(
            child: Blur(
              child: NavigationButtonsBar(onNavClick: onNavClick),
            ),
          ),
        ],
      ),
    );
  }
}

