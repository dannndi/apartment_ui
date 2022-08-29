import 'package:apartment_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return this != oldDelegate;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: AppColor.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: const [
          _CategoryItem(title: "Recomended"),
          _CategoryItem(title: "Super"),
          _CategoryItem(title: "Luxury"),
          _CategoryItem(title: "Family"),
          _CategoryItem(title: "Office"),
          _CategoryItem(title: "Apartment"),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColor.white),
      ),
    );
  }
}
