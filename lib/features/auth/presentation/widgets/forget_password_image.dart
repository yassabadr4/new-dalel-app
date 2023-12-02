import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_assets.dart';

class ForgetPasswordImage extends StatelessWidget {
  const ForgetPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 235,
      height: 235,
      child: Image.asset(AppAssets.forget),
    );
  }
}
