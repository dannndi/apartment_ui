import 'package:apartment_ui/core/route/app_route_name.dart';
import 'package:apartment_ui/core/theme/app_color.dart';
import 'package:apartment_ui/feature/get-started/presentation/widget/background_image.dart';
import 'package:apartment_ui/feature/get-started/presentation/widget/background_indicator.dart';
import 'package:apartment_ui/feature/get-started/presentation/widget/background_wording.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final controller = PageController();
  final selectedPageNotifier = ValueNotifier(0);
  final backgrounds = [
    "assets/started-1.png",
    "assets/started-2.png",
    "assets/started-3.png",
  ];

  final titles = [
    "ENJOY YOUR ESTATE WITH FUN",
    "ENJOY YOUR ESTATE WITH HEALTH",
    "ENJOY YOUR ESTATE WITH CHEAP",
  ];

  final desc = [
    "Bali is a Complete area to provide entertaiment, especialy if you are foreign tourist",
    "Bali is a Complete area to provide entertaiment, especialy if you are foreign tourist",
    "Bali is a Complete area to provide entertaiment, especialy if you are foreign tourist",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: backgrounds.length,
              itemBuilder: (context, index) {
                return BackgroundImage(
                  asset: backgrounds[index],
                );
              },
              onPageChanged: (index) {
                selectedPageNotifier.value = index;
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ValueListenableBuilder<int>(
                  valueListenable: selectedPageNotifier,
                  builder: (context, value, child) {
                    return BackgroundWording(
                      key: UniqueKey(),
                      title: titles[value],
                      desc: desc[value],
                      duration: const Duration(milliseconds: 1000),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRouteName.home,
                  );
                },
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.fromLTRB(48, 0, 48, 16),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.primaryColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "GET STARTED",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColor.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: ValueListenableBuilder<int>(
                  valueListenable: selectedPageNotifier,
                  builder: (context, value, _) {
                    return BackgroundIndicator(
                      key: UniqueKey(),
                      itemCount: backgrounds.length,
                      selectedIndex: value,
                      duration: const Duration(milliseconds: 6000),
                      onPageChange: (value) {
                        controller.animateToPage(
                          value,
                          duration: const Duration(
                            milliseconds: 1000,
                          ),
                          curve: Curves.ease,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
