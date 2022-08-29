import 'package:apartment_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.asset,
  });
  final String asset;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            asset,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColor.black.withOpacity(0.2),
      ),
    );
  }
}
