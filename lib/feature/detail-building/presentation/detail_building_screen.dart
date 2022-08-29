import 'package:apartment_ui/core/theme/app_color.dart';
import 'package:apartment_ui/feature/home/model/building.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailBuildingScreen extends StatefulWidget {
  const DetailBuildingScreen({super.key});

  @override
  State<DetailBuildingScreen> createState() => _DetailBuildingScreenState();
}

class _DetailBuildingScreenState extends State<DetailBuildingScreen> {
  late Building building;

  @override
  Widget build(BuildContext context) {
    building = ModalRoute.of(context)?.settings.arguments as Building;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(building.assets),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 12,
              left: 24,
              right: 24,
              bottom: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                        ),
                        child: const Icon(
                          CupertinoIcons.back,
                          size: 24,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                        ),
                        child: const Icon(
                          CupertinoIcons.bookmark,
                          size: 24,
                        ),
                      ),
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        building.tag,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        building.name,
                        style: Theme.of(context).textTheme.headlineSmall,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 8),
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
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
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.bed_rounded,
                            size: 18,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            building.bedroom.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.home_work_outlined,
                            size: 18,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "${building.area} m",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Text(
                        "About",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        building.about,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.grey[700]),
                      ),
                      const Divider(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(5, (index) {
                              return Icon(
                                building.rating >= index + 1
                                    ? CupertinoIcons.star_fill
                                    : CupertinoIcons.star,
                                color: building.rating >= index + 1
                                    ? Colors.amber[600]
                                    : Colors.grey,
                                size: 20,
                              );
                            }),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$${building.price}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(color: AppColor.primaryColor),
                                ),
                                TextSpan(
                                  text: " / mo",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/cs-profile.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dandi",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Receptionist",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    color: Colors.grey[700],
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.phone,
                        color: AppColor.primaryColor,
                        size: 32,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.primaryColor,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "BOOK NOW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppColor.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
