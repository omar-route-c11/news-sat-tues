import 'package:flutter/material.dart';
import 'package:news/shared/app_theme.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.source,
    required this.isSelected,
  });

  final String source;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primary : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(
          color: AppTheme.primary,
          width: 2,
        ),
      ),
      child: Text(
        source,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: isSelected ? AppTheme.white : AppTheme.primary),
      ),
    );
  }
}
