import 'package:apartment_ui/feature/home/model/building.dart';
import 'package:apartment_ui/feature/home/presentation/widget/building_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuildingNearYouWidget extends StatelessWidget {
  const BuildingNearYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: buildingsNearMe.length,
        itemBuilder: (context, index) {
          return BuildingItem(
            building: buildingsNearMe[index],
            height: 350,
            width: 280,
            margin: EdgeInsets.only(
              left: index == 0 ? 0 : 16,
            ),
          );
        },
      ),
    );
  }
}
