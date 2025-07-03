import 'package:flutter/material.dart';
import 'package:sayankabir_potfolio/components/blur_background.dart';
import 'package:sayankabir_potfolio/navbar/navigation_buttons_bar.dart';

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
          Blur(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Text(
                'SayanKabir.',
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
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

