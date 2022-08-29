import 'package:apartment_ui/core/theme/app_color.dart';
import 'package:apartment_ui/feature/home/model/building.dart';
import 'package:apartment_ui/feature/home/presentation/widget/building_item.dart';
import 'package:apartment_ui/feature/home/presentation/widget/category_widget.dart';
import 'package:apartment_ui/feature/home/presentation/widget/near_me_building_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            pinned: true,
            centerTitle: false,
            elevation: 0,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello, ",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColor.white,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    TextSpan(
                      text: "Dannndi",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppColor.white),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              Icon(
                Icons.notifications_rounded,
                color: AppColor.white,
              ),
              const SizedBox(width: 24),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(76),
              child: SizedBox(
                child: Container(
                  height: 56,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.search,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "Apartment, or Hotel",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColor.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CategoryWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near You",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BuildingNearYouWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular in Indonesia",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return BuildingItem(
                    building: popularInIndonesia[index],
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 16),
                    showDetail: false,
                  );
                },
                childCount: popularInIndonesia.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
