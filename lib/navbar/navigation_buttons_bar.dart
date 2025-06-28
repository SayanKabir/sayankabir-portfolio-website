import 'package:flutter/material.dart';
import 'package:sayankabir_potfolio/components/hover_builder.dart';
import 'package:sayankabir_potfolio/navbar/nav_button_item.dart';

class NavigationButtonsBar extends StatelessWidget {
  final void Function(String section)? onNavClick;

  const NavigationButtonsBar({super.key, this.onNavClick});

  @override
  Widget build(BuildContext context) {
    final isNarrow = MediaQuery.of(context).size.width < 500;

    return HoverBuilder(
      builder: (context, isHovered) {
        return AnimatedScale(
          scale: isHovered ? 1.05 : 1,
          duration: const Duration(milliseconds: 300),
          child: AnimatedContainer(
            clipBehavior: Clip.none,
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: isNarrow
                ? Column(
              mainAxisSize: MainAxisSize.min,
              children: _navItems(),
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _navItems(),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _navItems() {
    return [
      NavButtonItem(
        title: 'Home',
        onTap: () => onNavClick?.call('hero'),
      ),
      NavButtonItem(
        title: 'About Me',
        onTap: () => onNavClick?.call('about'),
      ),
      NavButtonItem(
        title: 'Projects',
        onTap: () => onNavClick?.call('projects'),
      ),
      NavButtonItem(
        title: 'Skills',
        onTap: () => onNavClick?.call('skills'),
      ),
      NavButtonItem(
        title: 'Contact',
        onTap: () => onNavClick?.call('contact'),
      ),
    ];
  }
}
