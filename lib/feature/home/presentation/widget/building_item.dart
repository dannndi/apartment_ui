import 'package:apartment_ui/core/route/app_route_name.dart';
import 'package:apartment_ui/core/theme/app_color.dart';
import 'package:apartment_ui/feature/home/model/building.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildingItem extends StatelessWidget {
  const BuildingItem({
    super.key,
    required this.building,
    this.showDetail = true,
    this.height,
    this.width,
    this.margin,
  });

  final Building building;
  final bool showDetail;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouteName.detailBuilding,
          arguments: building,
        );
      },
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height != null ? height! * 0.5 : 200,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: height != null ? height! * 0.5 : 200,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          building.assets,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.bookmark,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black87,
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(5, (index) {
                              return Icon(
                                CupertinoIcons.star_fill,
                                color: building.rating >= index + 1
                                    ? Colors.amber[600]
                                    : Colors.white,
                                size: 20,
                              );
                            }),
                          ),
                          if (!showDetail) ...[
                            const SizedBox(height: 8),
                            Text(
                              building.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "\$${building.price} / mo",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (showDetail) ...[
              Text(
                building.tag,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                building.name,
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 1,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    CupertinoIcons.placemark_fill,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    building.location,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.bathtub_outlined,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    building.bathroom.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(width: 16),
                  const Icon(
                    Icons.bed_rounded,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    building.bedroom.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${building.price}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppColor.primaryColor),
                    ),
                    TextSpan(
                      text: " / mo",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
