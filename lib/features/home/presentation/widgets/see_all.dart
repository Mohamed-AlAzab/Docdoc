import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key, this.onSeeAllTap, required this.title});

  final void Function()? onSeeAllTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppTextStyles.font18DarkBlueSemiBold()),
        Spacer(),
        GestureDetector(
          onTap: onSeeAllTap,
          child: Text('See all', style: AppTextStyles.font12BlueRegular()),
        ),
      ],
    );
  }
}
